function [scenario, egoVehicle] = env_big()
% createDrivingScenario Returns the drivingScenario defined in the Designer

% Generated by MATLAB(R) 9.14 (R2023a) and Automated Driving Toolbox 3.7 (R2023a).
% Generated on: 15-Apr-2023 17:31:37

% Construct a drivingScenario object.
scenario = drivingScenario;

% Add all road segments
roadCenters = [51 184 0;
    437 184 0];
laneSpecification = lanespec(8);
road(scenario, roadCenters, 'Lanes', laneSpecification, 'Name', 'Road');

roadCenters = [394 246 0;
    394 -120 0];
laneSpecification = lanespec(8);
road(scenario, roadCenters, 'Lanes', laneSpecification, 'Name', 'Road1');

roadCenters = [437 -48 0;
    47 -48 0];
laneSpecification = lanespec(8);
road(scenario, roadCenters, 'Lanes', laneSpecification, 'Name', 'Road2');

% Add the ego vehicle
egoVehicle = vehicle(scenario, ...
    'ClassID', 1, ...
    'Position', [96.8 180.2 0], ...
    'Mesh', driving.scenario.carMesh, ...
    'Name', 'Car');

% Add the non-ego actors
vehicle(scenario, ...
    'ClassID', 1, ...
    'Position', [112.9 186.8 0], ...
    'Mesh', driving.scenario.carMesh, ...
    'Name', 'Car1');

vehicle(scenario, ...
    'ClassID', 2, ...
    'Length', 8.2, ...
    'Width', 2.5, ...
    'Height', 3.5, ...
    'Position', [129 177.2 0], ...
    'Mesh', driving.scenario.truckMesh, ...
    'Name', 'Truck');

vehicle(scenario, ...
    'ClassID', 1, ...
    'Position', [128.3 186.8 0], ...
    'Mesh', driving.scenario.carMesh, ...
    'Name', 'Car2');

vehicle(scenario, ...
    'ClassID', 2, ...
    'Length', 8.2, ...
    'Width', 2.5, ...
    'Height', 3.5, ...
    'Position', [158.3 176.5 0], ...
    'Mesh', driving.scenario.truckMesh, ...
    'Name', 'Truck1');

vehicle(scenario, ...
    'ClassID', 2, ...
    'Length', 8.2, ...
    'Width', 2.5, ...
    'Height', 3.5, ...
    'Position', [191.9 191.1 0], ...
    'Mesh', driving.scenario.truckMesh, ...
    'Name', 'Truck2');

vehicle(scenario, ...
    'ClassID', 1, ...
    'Position', [225.6 178 0], ...
    'Mesh', driving.scenario.carMesh, ...
    'Name', 'Car3');

vehicle(scenario, ...
    'ClassID', 2, ...
    'Length', 8.2, ...
    'Width', 2.5, ...
    'Height', 3.5, ...
    'Position', [245.3 194.8 0], ...
    'Mesh', driving.scenario.truckMesh, ...
    'Name', 'Truck3');

vehicle(scenario, ...
    'ClassID', 2, ...
    'Length', 8.2, ...
    'Width', 2.5, ...
    'Height', 3.5, ...
    'Position', [270.2 178 0], ...
    'Mesh', driving.scenario.truckMesh, ...
    'Name', 'Truck4');

vehicle(scenario, ...
    'ClassID', 2, ...
    'Length', 8.2, ...
    'Width', 2.5, ...
    'Height', 3.5, ...
    'Position', [387.3 142.9 0], ...
    'Yaw', 90, ...
    'Mesh', driving.scenario.truckMesh, ...
    'Name', 'Truck5');

