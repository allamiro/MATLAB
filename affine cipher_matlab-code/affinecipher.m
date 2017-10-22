% AFFINE CIPHER.m
% The affine cipher is a type of monoalphabetic substitution cipher, 
% wherein each letter in an alphabet is mapped to its numeric equivalent,
% encrypted using a simple mathematical function, and converted back to a letter.
% The formula used means that each letter encrypts to one other letter, and back again, 
% meaning the cipher is essentially a standard substitution cipher with a rule governing 
% which letter goes to which. As such, it has the weaknesses of all substitution ciphers.
% Each letter is enciphered with the function (ax + b) mod 26, where b is the magnitude of the shift.

% % % % % % % % % % % % % % Encryption Specs - Key Size %%%%%%%%%%%%
%a and b are the keys  each key size  is 5 bits
% a  and b keys can not exceed more than 5 bits integer the program will error out 
% % % % % % % % % % % % 

% Affine Cipher Encryption Operation
% % % % % % % % % % % % % % % % % % % 
% Get the Key size for encryption  witht the tag "ae" and "be"
% Encryption Operation for Affine Cipher  Cipher = ae.plaintext + be(mod m)
HH1 = findobj(gcf,'Tag','ae');
ae = str2double(get(HH1,'String'));
HH2 = findobj(gcf,'Tag','be');
be = str2double(get(HH2,'String'));
% Get the Plain Text Value with the tag pe
HH3 = findobj(gcf,'Tag','pe');
pe = get(HH3,'String');

%Affine Encryption Operation /Algorithm

key=[ae be];
mod_key=key(1,1);
Add_key=key(1,2);

index=['a':'z'];
cipherAlphabet=['A':'Z'];

if ae>26 && be>26
    cipher = ['Wrong Key Used'];
    ce=cipher;
    HH = findobj(gcf,'Tag','ce'); 
    set(HH,'String',ce) 
    
end

cipherText=[];

for i=1:1:length(pe)
    
    p=find(index==pe(i));
    
    c=mod((mod_key*(p-1)+Add_key),26);
    
    cipherText=[cipherText cipherAlphabet(c+1)];
    

end;

cipher=char(cipherText);
ce=cipher;

HH = findobj(gcf,'Tag','ce'); 
set(HH,'String',ce) 

%Affine Cipher Decryption 
% % % % % % % % % % % % % % 
% Get the Key size used for encryption
HH1 = findobj(gcf,'Tag','ade');
ade = str2double(get(HH1,'String'));
HH2 = findobj(gcf,'Tag','bde');
bde = str2double(get(HH2,'String'));

% Get the Cipher Text Value  to be decrypted with the tag cde 

HH3 = findobj(gcf,'Tag','cde');
cde = get(HH3,'String');

if ade>26 && bde>26
    
plaintext =['Wrong Keys Used'];
cde=plaintext;


HH = findobj(gcf,'Tag','cde'); 
set(HH,'String',cde) 

end

% Getting the key values for ade and bde 

keydec=[ade bde];
mod_key=keydec(1,1);
Add_key=keydec(1,2);

plainText=[];

for i=1:1:length(cde)
    
    c=find(cipherAlphabet==cipherText(i));
    keyIn=mod_key;
    
if keyIn<0
    
    keyIn=mod(keyIn,26);
    
end

MMI=[1 3 5 7 9 11 15 16 21 23 25;...
    1 9 21 15 3 19 17 11 5 17 25];

   indx=find(MMI(1,:)==keyIn);
   mod_Key_MMI=MMI(2,indx);
   p=mod(mod_Key_MMI*((c-1)-Add_key),26);
    
    
    plainText=[plainText index(p+1)];
    
end;

pde=char(plainText);


HH5 = findobj(gcf,'Tag','pde'); 
set(HH5,'String',pde) 
