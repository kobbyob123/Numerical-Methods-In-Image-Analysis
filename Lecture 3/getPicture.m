imaqreset;

hcamera = webcam;

frames = 100;
figure()

for i=1:frames
    seeImage = snapshot(hcamera);
    %seeImageOutput = alarmIntruder(refImage, seeImage);
    %set(hShow, 'CData', detectedObject);
    imshow(seeImage)
    drawnow;
end
