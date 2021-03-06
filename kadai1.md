# 課題1レポート(テーマ：標本化間隔と空間解像度)

ぱくたそ(<https://www.pakutaso.com/20131048296post-3407.html>)よりダウンロードした画像を原画像とする．
この画像は縦450画像，横450画素による長方形のディジタルカラー画像である．

ORG=imread('cat1.png'); % 原画像の入力  
imagesc(ORG); axis image; % 画像の表示  
によって，原画像を読み込み，表示した結果を図１に示す．

![原画像](https://github.com/Kiyotaro/kadai_image_processing/blob/master/image/kadai1/fig1_1.jpg)  
図1 原画像

原画像を1/2サンプリングするには，画像を1/2倍に縮小した後，2倍に拡大すればよい．なお，拡大する際には，単純補間するために「box」オプションを設定する．

IMG = imresize(ORG,0.5); % 画像の縮小
IMG2 = imresize(IMG,2,'box'); % 画像の拡大

1/2サンプリングの結果を図2に示す．

![原画像](https://github.com/Kiyotaro/kadai_image_processing/blob/master/image/kadai1/fig1_2.jpg)  
図2 1/2サンプリング

同様に原画像を1/4サンプリングするには，画像を1/2倍に縮小した後，2倍に拡大すればよい．すなわち，

IMG = imresize(ORG,0.5); % 画像の縮小
IMG2 = imresize(IMG,2,'box'); % 画像の拡大

とする．1/4サンプリングの結果を図3に示す．

![原画像](https://github.com/Kiyotaro/kadai_image_processing/blob/master/image/kadai1/fig1_3.jpg)  
図3 1/4サンプリング

1/8から1/32サンプリングは，

IMG = imresize(ORG,0.5); % 画像の縮小
IMG2 = imresize(IMG,2,'box'); % 画像の拡大

を繰り返す．サンプリングの結果を図4～6に示す．

![原画像](https://github.com/Kiyotaro/kadai_image_processing/blob/master/image/kadai1/fig1_4.jpg)  
図4 1/8サンプリング

![原画像](https://github.com/Kiyotaro/kadai_image_processing/blob/master/image/kadai1/fig1_5.jpg)  
図5 1/16サンプリング

![原画像](https://github.com/Kiyotaro/kadai_image_processing/blob/master/image/kadai1/fig1_6.jpg)  
図6 1/32サンプリング

このようにサンプリング幅が大きくなると，モザイク状のサンプリング歪みが発生する．
