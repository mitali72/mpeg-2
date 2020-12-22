function playlast(n)

if isempty(n)
    n = 5;
end

load lastmov

v = VideoWriter('final.avi');
v.FrameRate = 30
open(v)

for i = 1:size(mov,4)
    m(i).cdata = uint8([mov(:,:,:,i) mov2(:,:,:,i)]);
    m(i).colormap = [];
    writeVideo(v,m(i))
   
end
close(v)

figuresc([0.9 0.5])
%figure
movie(m,n,30)
