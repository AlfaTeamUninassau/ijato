import 'package:routefly/routefly.dart';

import 'app/(public)/establishment_reg_page.dart' as a4;
import 'app/(public)/home_establishment_page.dart' as a3;
import 'app/(public)/home_page.dart' as a2;
import 'app/(public)/login_page.dart' as a0;
import 'app/(public)/register_page.dart' as a7;
import 'app/(public)/registered_vehicle_page.dart' as a1;
import 'app/(public)/user_type_page.dart' as a5;
import 'app/(public)/vehicle_reg_page.dart' as a6;

List<RouteEntity> get routes => [
  RouteEntity(
    key: '/login',
    uri: Uri.parse('/login'),
    routeBuilder: (ctx, settings) => Routefly.defaultRouteBuilder(
      ctx,
      settings,
      const a0.LoginPage(),
    ),
  ),
  RouteEntity(
    key: '/registered_vehicle',
    uri: Uri.parse('/registered_vehicle'),
    routeBuilder: (ctx, settings) => Routefly.defaultRouteBuilder(
      ctx,
      settings,
      const a1.RegisteredVehiclePage(),
    ),
  ),
  RouteEntity(
    key: '/home',
    uri: Uri.parse('/home'),
    routeBuilder: (ctx, settings) => Routefly.defaultRouteBuilder(
      ctx,
      settings,
      const a2.HomePage(),
    ),
  ),
  RouteEntity(
    key: '/home_establishment',
    uri: Uri.parse('/home_establishment'),
    routeBuilder: (ctx, settings) => Routefly.defaultRouteBuilder(
      ctx,
      settings,
      const a3.HomeEstablishmentPage(),
    ),
  ),
  RouteEntity(
    key: '/establishment_reg',
    uri: Uri.parse('/establishment_reg'),
    routeBuilder: (ctx, settings) => Routefly.defaultRouteBuilder(
      ctx,
      settings,
      const a4.EstablishmentReg(),
    ),
  ),
  RouteEntity(
    key: '/user_type',
    uri: Uri.parse('/user_type'),
    routeBuilder: (ctx, settings) => Routefly.defaultRouteBuilder(
      ctx,
      settings,
      const a5.UserTypePage(),
    ),
  ),
  RouteEntity(
    key: '/vehicle_reg',
    uri: Uri.parse('/vehicle_reg'),
    routeBuilder: (ctx, settings) => Routefly.defaultRouteBuilder(
      ctx,
      settings,
      const a6.VehicleRegPage(),
    ),
  ),
  RouteEntity(
    key: '/register',
    uri: Uri.parse('/register'),
    routeBuilder: (ctx, settings) => Routefly.defaultRouteBuilder(
      ctx,
      settings,
      const a7.RegisterPage(),
    ),
  ),
];

const routePaths = (
  path: '/',
  login: '/login',
  registeredVehicle: '/registered_vehicle',
  home: '/home',
  homeEstablishment: '/home_establishment',
  establishmentReg: '/establishment_reg',
  userType: '/user_type',
  vehicleReg: '/vehicle_reg',
  register: '/register',
);
