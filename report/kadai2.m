% 課題2 階調数と疑似輪郭
% 2017.12.14 NAGASAWA

% 2階調，4階調，8階調の画像を生成する．

% 更新履歴
% 2017.12.14 第一バージョン

clear; % 変数のオールクリア

ORG=imread('cat1.jpg'); % 原画像の入力
ORG = rgb2gray(ORG); colormap(gray); colorbar;
imagesc(ORG); axis image; % 画像の表示
pause; % 一時停止

% 2階調画像の生成
IMG = ORG>128; % 画素が128より大きいとき1，それ以下0
imagesc(IMG); colormap(gray); colorbar;  axis image;
pause;

% 4階調画像の生成
IMG0 = ORG>64;  % 画素が64より大きいとき1，それ以下0
IMG1 = ORG>128; % 画素が128より大きいとき1，それ以下0
IMG2 = ORG>192; % 画素が192より大きいとき1，それ以下0
IMG = IMG0 + IMG1 + IMG2;
imagesc(IMG); colormap(gray); colorbar;  axis image;
pause;

% 8階調画像の生成
IMG = zeros(450,450); % 画像の出力用配列をゼロにする
for ii=1:7
    IMG = IMG + (ORG>(256*ii/8));
      % 画素が256*ii/8より大きいとき1，それ以下0
end
imagesc(IMG); colormap(gray); colorbar;  axis image;

return
