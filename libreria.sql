-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-07-2024 a las 01:34:07
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `libreria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add libro', 7, 'add_libro'),
(26, 'Can change libro', 7, 'change_libro'),
(27, 'Can delete libro', 7, 'delete_libro'),
(28, 'Can view libro', 7, 'view_libro'),
(29, 'Can add empresa', 8, 'add_empresa'),
(30, 'Can change empresa', 8, 'change_empresa'),
(31, 'Can delete empresa', 8, 'delete_empresa'),
(32, 'Can view empresa', 8, 'view_empresa'),
(33, 'Can add evaluadores', 9, 'add_evaluadores'),
(34, 'Can change evaluadores', 9, 'change_evaluadores'),
(35, 'Can delete evaluadores', 9, 'delete_evaluadores'),
(36, 'Can view evaluadores', 9, 'view_evaluadores'),
(37, 'Can add evaluaciones', 10, 'add_evaluaciones'),
(38, 'Can change evaluaciones', 10, 'change_evaluaciones'),
(39, 'Can delete evaluaciones', 10, 'delete_evaluaciones'),
(40, 'Can view evaluaciones', 10, 'view_evaluaciones'),
(41, 'Can add galeria empresa', 11, 'add_galeriaempresa'),
(42, 'Can change galeria empresa', 11, 'change_galeriaempresa'),
(43, 'Can delete galeria empresa', 11, 'delete_galeriaempresa'),
(44, 'Can view galeria empresa', 11, 'view_galeriaempresa'),
(45, 'Can add horarios empresa', 12, 'add_horariosempresa'),
(46, 'Can change horarios empresa', 12, 'change_horariosempresa'),
(47, 'Can delete horarios empresa', 12, 'delete_horariosempresa'),
(48, 'Can view horarios empresa', 12, 'view_horariosempresa'),
(49, 'Can add producto empresa', 13, 'add_productoempresa'),
(50, 'Can change producto empresa', 13, 'change_productoempresa'),
(51, 'Can delete producto empresa', 13, 'delete_productoempresa'),
(52, 'Can view producto empresa', 13, 'view_productoempresa'),
(53, 'Can add redes sociales empresa', 14, 'add_redessocialesempresa'),
(54, 'Can change redes sociales empresa', 14, 'change_redessocialesempresa'),
(55, 'Can delete redes sociales empresa', 14, 'delete_redessocialesempresa'),
(56, 'Can view redes sociales empresa', 14, 'view_redessocialesempresa'),
(57, 'Can add servicios empresa', 15, 'add_serviciosempresa'),
(58, 'Can change servicios empresa', 15, 'change_serviciosempresa'),
(59, 'Can delete servicios empresa', 15, 'delete_serviciosempresa'),
(60, 'Can view servicios empresa', 15, 'view_serviciosempresa'),
(61, 'Can add respuesta', 16, 'add_respuesta'),
(62, 'Can change respuesta', 16, 'change_respuesta'),
(63, 'Can delete respuesta', 16, 'delete_respuesta'),
(64, 'Can view respuesta', 16, 'view_respuesta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$720000$k2sYZKGjBplrZKfqkXnQqU$6lDu2ShS3LIq3MTuPL2+eaJ3B0xXQez61qacsUpomMQ=', '2024-07-28 02:37:53.854813', 1, 'niko', '', '', 'niko2329@gmail.com', 1, 1, '2024-07-28 02:35:29.938138');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-07-28 02:38:53.437147', '1', 'Nombre: Banco de Chile - Descripción: Banco de Chile', 1, '[{\"added\": {}}]', 7, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'libreria', 'empresa'),
(10, 'libreria', 'evaluaciones'),
(9, 'libreria', 'evaluadores'),
(11, 'libreria', 'galeriaempresa'),
(12, 'libreria', 'horariosempresa'),
(7, 'libreria', 'libro'),
(13, 'libreria', 'productoempresa'),
(14, 'libreria', 'redessocialesempresa'),
(16, 'libreria', 'respuesta'),
(15, 'libreria', 'serviciosempresa'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-07-28 02:11:35.149746'),
(2, 'auth', '0001_initial', '2024-07-28 02:11:35.723656'),
(3, 'admin', '0001_initial', '2024-07-28 02:11:36.060725'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-07-28 02:11:36.076352'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-07-28 02:11:36.076352'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-07-28 02:11:36.192626'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-07-28 02:11:36.238861'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-07-28 02:11:36.255663'),
(9, 'auth', '0004_alter_user_username_opts', '2024-07-28 02:11:36.276903'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-07-28 02:11:36.329243'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-07-28 02:11:36.329243'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-07-28 02:11:36.341973'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-07-28 02:11:36.364168'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-07-28 02:11:36.379588'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-07-28 02:11:36.392726'),
(16, 'auth', '0011_update_proxy_permissions', '2024-07-28 02:11:36.407947'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-07-28 02:11:36.430143'),
(18, 'libreria', '0001_initial', '2024-07-28 02:11:36.441999'),
(19, 'libreria', '0002_libro_direccion_alter_libro_titulo', '2024-07-28 02:11:36.457099'),
(20, 'libreria', '0003_libro_horarios_libro_telefono', '2024-07-28 02:11:36.475688'),
(21, 'libreria', '0004_rename_titulo_libro_nombre_remove_libro_direccion_and_more', '2024-07-28 02:11:36.528372'),
(22, 'libreria', '0005_libro_contadorcomentarios_and_more', '2024-07-28 02:11:36.606900'),
(23, 'libreria', '0006_empresa_evaluadores_libro_id_empresa_evaluaciones_and_more', '2024-07-28 02:11:37.250243'),
(24, 'libreria', '0007_alter_libro_id_empresa_and_more', '2024-07-28 02:11:37.730425'),
(25, 'libreria', '0008_evaluadores_perfilcreado', '2024-07-28 02:11:37.744938'),
(26, 'libreria', '0009_remove_empresa_claveusuario_and_more', '2024-07-28 02:11:39.171794'),
(27, 'libreria', '0010_empresa_is_active_empresa_is_staff_and_more', '2024-07-28 02:11:39.234865'),
(28, 'sessions', '0001_initial', '2024-07-28 02:11:39.273659'),
(29, 'libreria', '0011_remove_evaluaciones_evaluador', '2024-07-28 02:51:07.259417'),
(30, 'libreria', '0012_empresa_tipo_empresa', '2024-07-28 02:51:07.283453'),
(31, 'libreria', '0013_evaluaciones_usuarioevaluador', '2024-07-28 14:10:05.117429'),
(32, 'libreria', '0014_remove_libro_id_empresa_libro_empresa_and_more', '2024-07-28 19:07:57.364486'),
(33, 'libreria', '0015_respuesta', '2024-07-30 17:35:37.538701'),
(34, 'libreria', '0015_evaluaciones_respuesta', '2024-07-30 20:09:42.524119');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('apfagrusfpgb0qqphk7u34tft4e69gle', '.eJxVjEEOwiAQRe_C2pApQgGX7nsGMsOAVA0kpV0Z765NutDtf-_9lwi4rSVsPS1hZnERVpx-N8L4SHUHfMd6azK2ui4zyV2RB-1yapye18P9OyjYy7ceYnR09sCDNQljZp2NRnZMoK0ip0GDZzRKacjWGFYqebBkFQLBOIr3B_BzN5I:1sYHr5:habYm16BW4OSWhbYuS2ag3QvkRyrDvpIgJjJSaj9cqE', '2024-08-12 04:19:27.018540'),
('q6gl7o6z45i6jel9djuayk9pfi0jdwhr', '.eJxVjEEOwiAQRe_C2hCYFigu3XsGMjCDVA0kpV0Z765NutDtf-_9lwi4rSVsnZcwkzgL0OL0O0ZMD647oTvWW5Op1XWZo9wVedAur434eTncv4OCvXxrm8lE8DAmBiDtvXLJqEgTs7IY84haO85uIGftFG0afNbeMENW3qEV7w8RBDhH:1sYIR3:DEjeR21uCsZgpN7oju7drZXplAH7CsZQgfUnFlA8bwA', '2024-08-12 04:56:37.675113');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libreria_empresa`
--

CREATE TABLE `libreria_empresa` (
  `id` bigint(20) NOT NULL,
  `nombreUsuario` varchar(100) NOT NULL,
  `nombrePersona` varchar(100) NOT NULL,
  `apellidoPersona` varchar(100) NOT NULL,
  `perfilCreado` datetime(6) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `password` varchar(128) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `tipo_empresa` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `libreria_empresa`
--

INSERT INTO `libreria_empresa` (`id`, `nombreUsuario`, `nombrePersona`, `apellidoPersona`, `perfilCreado`, `last_login`, `password`, `is_active`, `is_staff`, `tipo_empresa`) VALUES
(1, 'pelucon', 'Armando', 'Pleitos', '2024-07-28 02:52:27.833611', '2024-07-29 04:08:15.971138', 'pbkdf2_sha256$720000$43kEKRnsSZj6TQad95aeGR$NwnbGwvtGXPFScU3aVuaptqeKscuTXmWXEOIHxjJYas=', 1, 0, 'evaluador'),
(7, 'ferretero', 'Armando', 'Quezada', '2024-07-28 16:57:20.804874', '2024-07-30 21:11:17.814413', 'pbkdf2_sha256$720000$UYPKJmb4sxDaDhegXE7Ue5$DNb1IcafimKI9zEVV8g46aF/7/nbyBmemh7VWzohzgI=', 1, 0, 'empresa'),
(8, 'doctor', 'doctor', 'hauss', '2024-07-28 19:18:37.049313', '2024-07-30 03:03:40.068078', 'pbkdf2_sha256$720000$T6rhK5ioxTQxlp9W7cxU77$5VsXmTNQpQtKJ1Ql+sl9/n0BdJy9bZQpMArfVmx31jY=', 1, 0, 'empresa'),
(9, 'comilon', 'Armando', 'Cenas', '2024-07-28 19:19:06.685483', '2024-07-29 00:01:04.356131', 'pbkdf2_sha256$720000$IenTkEIyWZCci45YdSJbbS$tTC7/jSKTUlClU6WAeRRILVodgF5op1QK/aTxGZxH4U=', 1, 0, 'empresa'),
(10, 'banquero', 'Armando', 'bancas', '2024-07-28 19:20:34.364379', '2024-07-29 03:02:22.822143', 'pbkdf2_sha256$720000$cIPjD8F8UvpWYIrAy7lnGk$HhXGl+l6FdMqrAlaGZa4THiNTD26gjqiC62OXZA6Kv8=', 1, 0, 'empresa'),
(11, 'farmaceutico', 'Armando', 'Remedios', '2024-07-28 19:21:04.025640', '2024-07-28 19:26:57.734903', 'pbkdf2_sha256$720000$zs9yLjd7aWhprFWer3DGDv$pX2R5jaDOJzup8EwZMc2c+s2orfmGT9XVNHI/53fUd0=', 1, 0, 'empresa'),
(12, 'reponedor', 'Armando', 'mercaderias', '2024-07-28 19:21:31.335204', '2024-07-29 01:46:17.236383', 'pbkdf2_sha256$720000$ol7SY2Q1T5rrwTahkfQ5ja$Qq98Z5quSELF9KRb3v3VUBdgyJ6eO2q+WtiA61j7X4A=', 1, 0, 'empresa'),
(13, 'sodimac', 'Armando', 'Negocios', '2024-07-28 19:28:44.458467', '2024-07-28 19:29:05.203675', 'pbkdf2_sha256$720000$Ep0KntXozkFSr8dx8ZbtWY$AX4Lm2xxyzZQ5fcJEDt9Rye9nMeXCsrU+DZ+XyxI4NM=', 1, 0, 'empresa'),
(14, 'farmaceutico2', 'Armando', 'Dolores', '2024-07-28 19:32:46.761496', '2024-07-28 19:33:14.640695', 'pbkdf2_sha256$720000$3Qxwejb74Em3zlN6IKGH5o$yXY3uZRe8ySmCk2/n0sG9gL9lALMSjI/KWT+90kiBlE=', 1, 0, 'empresa'),
(15, 'jaime', 'Jaime', 'Somers', '2024-07-28 19:35:36.835698', '2024-07-30 00:17:48.964617', 'pbkdf2_sha256$720000$TLrAmLSevv6R5XoLUhBeq6$OgaCCI17m60khtC5Oyw35gU6EjBdWlDHSFX9a0JqGtE=', 1, 0, 'evaluador'),
(16, 'Jhon', 'Jhon', 'Connors', '2024-07-28 19:36:30.772854', NULL, 'pbkdf2_sha256$720000$tokcIKwhS5DbLrb5EBR2U8$/OBxcWpGdqKyi0CFl++Q8BEs2QTw6SpnnJkHp4Rv0Jw=', 1, 0, 'evaluador'),
(17, 'Peter', 'Peter', 'Cetera', '2024-07-28 19:36:59.281023', NULL, 'pbkdf2_sha256$720000$lcfEKjbnTe3BDQRIgnFoDP$xlThaBbtDLY5y2f5NMZQoTB0ix8L9W1rWotEPERcBXM=', 1, 0, 'evaluador'),
(18, 'Phill', 'Phill', 'Collins', '2024-07-28 19:37:33.081821', NULL, 'pbkdf2_sha256$720000$s9a9DGLeCYXTOexFuPYcd6$FuG63gmOGkz4Zl/5FGIwrpRFds8dReRRq7W44FVBCJY=', 1, 0, 'evaluador'),
(19, 'Juan', 'Jhon', 'Fogherty', '2024-07-28 19:38:31.203378', NULL, 'pbkdf2_sha256$720000$DUEJjWeNyplWApNcUokoCt$atMO9cZ5F4FlCylWnU6xwDmT6N6FMDyIzlWhvrl/7pM=', 1, 0, 'evaluador'),
(20, 'Sandra', 'Sandra', 'Bulock', '2024-07-28 19:38:54.015439', NULL, 'pbkdf2_sha256$720000$g0efOj2hIto5IfbTNLzW4A$sfu1xTMTuR14PTSrJ70dPQJ7BRpSjLNhfFEPG5XWtUA=', 1, 0, 'evaluador'),
(21, 'Sara', 'Shara', 'Connors', '2024-07-28 19:39:30.671815', '2024-07-30 03:01:24.421394', 'pbkdf2_sha256$720000$9iBQP8bqMYZH4awdb0x3AS$LxyuFKKoYDnIB5J1ihv8/MK0TJIX9MM9cFeq1z0V9B8=', 1, 0, 'evaluador'),
(22, 'joni', 'Jhonny', 'Deep', '2024-07-28 19:40:22.222628', NULL, 'pbkdf2_sha256$720000$jJ6oHfpH7QYlLBlLhqjjUQ$bE1PGlSLiwSqgGOHRgnQ/IBXIIAJlSM4/OSnWDZeBZU=', 1, 0, 'evaluador'),
(23, 'Brad', 'Brad', 'Pitt', '2024-07-28 19:40:56.694989', NULL, 'pbkdf2_sha256$720000$mQcrPdvH5CvP7CbCoSEJGL$YtaVsp9pZ02DtrF1IMFn1lSg6uqqr82Yj3rI6XYFIl4=', 1, 0, 'evaluador'),
(24, 'Ema', 'Emma', 'Wattson', '2024-07-28 19:42:32.110048', NULL, 'pbkdf2_sha256$720000$fmkBzsDL4YrM7I3OKtCRm1$0E4Ipy6d+P2eWGQMZ0Wb3WLroTp4TWv1i1QPmbIoBsI=', 1, 0, 'evaluador'),
(25, 'Gal', 'Gal', 'Gadot', '2024-07-28 19:42:56.791386', '2024-07-29 01:47:59.959164', 'pbkdf2_sha256$720000$XMPpWVXphXgM8VFnNsIRQC$dQuFbhfw14BBPAi9Hkduh2Q434MXtCXK4GH7La59E8M=', 1, 0, 'evaluador'),
(26, 'Jenifer', 'Jennifer', 'Aniston', '2024-07-28 19:43:33.828219', '2024-07-30 00:29:07.939606', 'pbkdf2_sha256$720000$o37TX1NT2hNYqhzDjeBKy0$bLvG0ookQ4GLlvnWQHmsyNz2/edh0UBu9zWcLhAPndA=', 1, 0, 'evaluador'),
(27, 'mueblista', 'Armando', 'Sillas', '2024-07-29 01:40:48.168934', '2024-07-30 21:10:20.501854', 'pbkdf2_sha256$720000$Oe8YzHYWWoUloOLgOs97LH$TEBKIVvPO7QcysOT8yRKFxSycqCQBhtaAhi6+yODPOk=', 1, 0, 'empresa'),
(28, 'cami', 'cami', 'Lucero', '2024-07-29 04:38:29.880501', '2024-07-30 00:27:48.596051', 'pbkdf2_sha256$720000$3hma9oj3SJ5IsmgnQlD26O$Z+d2g8GhNcFzQxJFqKfexJWLdiae4ggiAd/RwTq5cTM=', 1, 0, 'evaluador'),
(29, 'farmaceutico3', 'Armando', 'Gatica', '2024-07-30 04:19:48.174854', '2024-07-30 04:20:28.008383', 'pbkdf2_sha256$720000$DurQJsaZrDkMcJSUc54AO9$WIXjHyn/fDO6+FgVtqejK0Lorp42gNqB2umq36hhM6k=', 1, 0, 'empresa'),
(30, 'ferretero3', 'Armando', 'Parrillas', '2024-07-30 04:25:35.791967', NULL, 'pbkdf2_sha256$720000$Q2XOq0WgKHywuK3nP1fIV6$+7WRqPoFfqsUNDIkX1WFxsZYpFI/YyhpbvU6QTv4XSw=', 1, 0, 'empresa'),
(31, 'pancho', 'Francisco', 'Perez', '2024-07-30 22:54:50.312686', '2024-07-30 23:19:07.177638', 'pbkdf2_sha256$720000$m6b1kJtK8td6CizTYpyFBm$ZwlN+wtCjWeahoHYDQproe/paEdAGMDgXWAfR5Id2/k=', 1, 0, 'empresa'),
(32, 'enzo123', 'Enzo', 'Gatica', '2024-07-30 23:07:59.159647', '2024-07-30 23:11:08.291329', 'pbkdf2_sha256$720000$exUd7QAoCOyedpO2hh1RDm$6xY5W4SApPivNCwSdVJmLXQdmChoy66qazVZsnvqqQw=', 1, 0, 'evaluador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libreria_evaluaciones`
--

CREATE TABLE `libreria_evaluaciones` (
  `id` int(11) NOT NULL,
  `comentarioEvaluador` longtext NOT NULL,
  `puntuacionServicio` int(11) NOT NULL,
  `puntuacionProducto` int(11) NOT NULL,
  `perfilEmpresa_id` int(11) NOT NULL,
  `usuarioEvaluador` longtext NOT NULL,
  `respuesta` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `libreria_evaluaciones`
--

INSERT INTO `libreria_evaluaciones` (`id`, `comentarioEvaluador`, `puntuacionServicio`, `puntuacionProducto`, `perfilEmpresa_id`, `usuarioEvaluador`, `respuesta`) VALUES
(6, 'Muy buena..', 5, 5, 22, 'cami', ''),
(7, 'Me gustan los muebles de Raulí.', 5, 5, 22, 'Jenifer', 'Gracias por tu comentario Jenifer.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libreria_evaluadores`
--

CREATE TABLE `libreria_evaluadores` (
  `id` bigint(20) NOT NULL,
  `nombreUsuario` varchar(100) NOT NULL,
  `nombrePersona` varchar(100) NOT NULL,
  `apellidoPersona` varchar(100) NOT NULL,
  `perfilCreado` datetime(6) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `password` varchar(128) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_staff` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libreria_galeriaempresa`
--

CREATE TABLE `libreria_galeriaempresa` (
  `id` int(11) NOT NULL,
  `imagenGaleria1` varchar(100) DEFAULT NULL,
  `imagenGaleria2` varchar(100) DEFAULT NULL,
  `imagenGaleria3` varchar(100) DEFAULT NULL,
  `imagenGaleria4` varchar(100) DEFAULT NULL,
  `perfilEmpresa_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `libreria_galeriaempresa`
--

INSERT INTO `libreria_galeriaempresa` (`id`, `imagenGaleria1`, `imagenGaleria2`, `imagenGaleria3`, `imagenGaleria4`, `perfilEmpresa_id`) VALUES
(1, 'galeria/salud1_1qhD5i8.jpg', 'galeria/ferre1.jpg', 'galeria/ferre2.jpg', 'galeria/ferre3.jpg', 13),
(4, '', '', '', '', 16),
(5, '', '', '', '', 17),
(6, '', '', '', '', 26),
(7, 'galeria/salud1_JO3LPNl.jpg', 'galeria/ferre1_wAcciw8.jpg', 'galeria/ferre2_tH9WcRg.jpg', 'galeria/ferre3_Q5nB41l.jpg', 28);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libreria_horariosempresa`
--

CREATE TABLE `libreria_horariosempresa` (
  `id` int(11) NOT NULL,
  `descripcionHorario` longtext NOT NULL,
  `horarioApertura` time(6) NOT NULL,
  `horarioCierre` time(6) NOT NULL,
  `perfilEmpresa_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libreria_libro`
--

CREATE TABLE `libreria_libro` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `descripcion` longtext DEFAULT NULL,
  `contadorComentarios` double DEFAULT NULL,
  `contadorVisitaEvaluador` double DEFAULT NULL,
  `contadorVisitaInvitado` double DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `promedioCalificaciones` double DEFAULT NULL,
  `telefono` varchar(100) DEFAULT NULL,
  `id_evaluadoresEmpresa_id` bigint(20) DEFAULT NULL,
  `id_galeriaEmpresa_id` int(11) DEFAULT NULL,
  `id_serviciosEmpresa_id` int(11) DEFAULT NULL,
  `empresa_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `libreria_libro`
--

INSERT INTO `libreria_libro` (`id`, `nombre`, `imagen`, `descripcion`, `contadorComentarios`, `contadorVisitaEvaluador`, `contadorVisitaInvitado`, `direccion`, `promedioCalificaciones`, `telefono`, `id_evaluadoresEmpresa_id`, `id_galeriaEmpresa_id`, `id_serviciosEmpresa_id`, `empresa_id`) VALUES
(13, 'Ferreteria Sur Valdivia', 'imagenes/Ferreteria_sur.jpg', 'Ferreteria tradicional Andvanter y Nuss , con todo el corazón.', NULL, NULL, NULL, 'valdivia Chile', NULL, '23423535343', NULL, NULL, NULL, 7),
(16, 'Supermercados Lider', 'imagenes/Lider_xIxkUe7.jpg', 'Mucha variedad de productos.', NULL, NULL, NULL, 'valdivia', NULL, '23423535343', NULL, NULL, NULL, 12),
(17, 'Banco de Chile,  ciudad Valdivia', 'imagenes/Bancodechile_oDT9hEi.jpg', 'Banco de larga data en la región de los Rios.', NULL, NULL, NULL, 'valdivia Chile', NULL, '632344576', NULL, NULL, NULL, 10),
(18, 'Farmacia Prat', 'imagenes/FarmaciaPrat.jpg', 'Farmacia tradicional en el sur del mundo.', NULL, NULL, NULL, 'valdivia', NULL, '23423535343', NULL, NULL, NULL, 11),
(19, 'Sodimac', 'imagenes/Ferreteriasodimac.jpg', 'Ferreteria', NULL, NULL, NULL, 'valdivia', NULL, '23423535343', NULL, NULL, NULL, 13),
(20, 'Farmacia Picarte', 'imagenes/farmaciapicarte_RzgIsKl.jpg', 'Farmacia tradicional en el sur del mundo.', NULL, NULL, NULL, 'valdivia', NULL, '23423535343', NULL, NULL, NULL, 14),
(22, 'Muebleria Martinez', 'imagenes/muebleriamart.jpg', 'Muebleria rustica', 0, 0, 0, 'calle rustica Valdivia', 0, '23423535343', NULL, NULL, NULL, 27),
(26, 'Farmacia Cruz Verde', 'imagenes/cruzverde.jpg', 'Farmacia Cruz Verde en el centro de Valdivia', 0, 0, 0, 'Picarte Esq. Caupolican', 0, '23423535343', NULL, NULL, NULL, 29),
(27, 'Ferreteria Altermatt', 'imagenes/Altermatt.jpg', 'Ferreteria de larga data en Valdivia.', 0, 0, 0, 'Pobl Valparaiso 257', 0, '23423535343', NULL, NULL, NULL, 29),
(28, 'Constructora Pancho', 'imagenes/Altermatt_LHCOIMv.jpg', 'Constructora en Valdivia', 0, 0, 0, 'calle libertad 34', 0, '2342', NULL, NULL, NULL, 31);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libreria_productoempresa`
--

CREATE TABLE `libreria_productoempresa` (
  `id` int(11) NOT NULL,
  `productosEmpresa` longtext NOT NULL,
  `perfilEmpresa_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libreria_redessocialesempresa`
--

CREATE TABLE `libreria_redessocialesempresa` (
  `id` int(11) NOT NULL,
  `correoEmpresa` varchar(254) NOT NULL,
  `paginaWebEmpresa` varchar(200) DEFAULT NULL,
  `InstagramEmpresa` varchar(200) DEFAULT NULL,
  `FacebookEmpresa` varchar(200) DEFAULT NULL,
  `WhatsappEmpresa` varchar(15) DEFAULT NULL,
  `perfilEmpresa_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libreria_respuesta`
--

CREATE TABLE `libreria_respuesta` (
  `evaluacion_id` int(11) NOT NULL,
  `respuesta` longtext NOT NULL,
  `fecha_respuesta` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libreria_serviciosempresa`
--

CREATE TABLE `libreria_serviciosempresa` (
  `id` int(11) NOT NULL,
  `serviciosEmpresa` longtext NOT NULL,
  `perfilEmpresa_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `libreria_empresa`
--
ALTER TABLE `libreria_empresa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `libreria_empresa_nombreUsuario_7ae2b33a_uniq` (`nombreUsuario`);

--
-- Indices de la tabla `libreria_evaluaciones`
--
ALTER TABLE `libreria_evaluaciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `libreria_evaluacione_perfilEmpresa_id_ce3fd139_fk_libreria_` (`perfilEmpresa_id`);

--
-- Indices de la tabla `libreria_evaluadores`
--
ALTER TABLE `libreria_evaluadores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `libreria_evaluadores_nombreUsuario_776fd35d_uniq` (`nombreUsuario`);

--
-- Indices de la tabla `libreria_galeriaempresa`
--
ALTER TABLE `libreria_galeriaempresa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `libreria_galeriaempr_perfilEmpresa_id_5d4f9f43_fk_libreria_` (`perfilEmpresa_id`);

--
-- Indices de la tabla `libreria_horariosempresa`
--
ALTER TABLE `libreria_horariosempresa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `libreria_horariosemp_perfilEmpresa_id_bf3197d4_fk_libreria_` (`perfilEmpresa_id`);

--
-- Indices de la tabla `libreria_libro`
--
ALTER TABLE `libreria_libro`
  ADD PRIMARY KEY (`id`),
  ADD KEY `libreria_libro_id_galeriaEmpresa_id_97197b10_fk_libreria_` (`id_galeriaEmpresa_id`),
  ADD KEY `libreria_libro_id_serviciosEmpresa__b03078c4_fk_libreria_` (`id_serviciosEmpresa_id`),
  ADD KEY `libreria_libro_id_evaluadoresEmpresa_id_c349730e_fk` (`id_evaluadoresEmpresa_id`),
  ADD KEY `libreria_libro_empresa_id_93dbd7ae_fk_libreria_empresa_id` (`empresa_id`);

--
-- Indices de la tabla `libreria_productoempresa`
--
ALTER TABLE `libreria_productoempresa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `libreria_productoemp_perfilEmpresa_id_f0601856_fk_libreria_` (`perfilEmpresa_id`);

--
-- Indices de la tabla `libreria_redessocialesempresa`
--
ALTER TABLE `libreria_redessocialesempresa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `libreria_redessocial_perfilEmpresa_id_3829f5f4_fk_libreria_` (`perfilEmpresa_id`);

--
-- Indices de la tabla `libreria_respuesta`
--
ALTER TABLE `libreria_respuesta`
  ADD PRIMARY KEY (`evaluacion_id`);

--
-- Indices de la tabla `libreria_serviciosempresa`
--
ALTER TABLE `libreria_serviciosempresa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `libreria_serviciosem_perfilEmpresa_id_64f88841_fk_libreria_` (`perfilEmpresa_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `libreria_empresa`
--
ALTER TABLE `libreria_empresa`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `libreria_evaluaciones`
--
ALTER TABLE `libreria_evaluaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `libreria_evaluadores`
--
ALTER TABLE `libreria_evaluadores`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `libreria_galeriaempresa`
--
ALTER TABLE `libreria_galeriaempresa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `libreria_horariosempresa`
--
ALTER TABLE `libreria_horariosempresa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `libreria_libro`
--
ALTER TABLE `libreria_libro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `libreria_productoempresa`
--
ALTER TABLE `libreria_productoempresa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `libreria_redessocialesempresa`
--
ALTER TABLE `libreria_redessocialesempresa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `libreria_serviciosempresa`
--
ALTER TABLE `libreria_serviciosempresa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `libreria_evaluaciones`
--
ALTER TABLE `libreria_evaluaciones`
  ADD CONSTRAINT `libreria_evaluacione_perfilEmpresa_id_ce3fd139_fk_libreria_` FOREIGN KEY (`perfilEmpresa_id`) REFERENCES `libreria_libro` (`id`);

--
-- Filtros para la tabla `libreria_galeriaempresa`
--
ALTER TABLE `libreria_galeriaempresa`
  ADD CONSTRAINT `libreria_galeriaempr_perfilEmpresa_id_5d4f9f43_fk_libreria_` FOREIGN KEY (`perfilEmpresa_id`) REFERENCES `libreria_libro` (`id`);

--
-- Filtros para la tabla `libreria_horariosempresa`
--
ALTER TABLE `libreria_horariosempresa`
  ADD CONSTRAINT `libreria_horariosemp_perfilEmpresa_id_bf3197d4_fk_libreria_` FOREIGN KEY (`perfilEmpresa_id`) REFERENCES `libreria_libro` (`id`);

--
-- Filtros para la tabla `libreria_libro`
--
ALTER TABLE `libreria_libro`
  ADD CONSTRAINT `libreria_libro_empresa_id_93dbd7ae_fk_libreria_empresa_id` FOREIGN KEY (`empresa_id`) REFERENCES `libreria_empresa` (`id`),
  ADD CONSTRAINT `libreria_libro_id_evaluadoresEmpresa_id_c349730e_fk` FOREIGN KEY (`id_evaluadoresEmpresa_id`) REFERENCES `libreria_evaluadores` (`id`),
  ADD CONSTRAINT `libreria_libro_id_galeriaEmpresa_id_97197b10_fk_libreria_` FOREIGN KEY (`id_galeriaEmpresa_id`) REFERENCES `libreria_galeriaempresa` (`id`),
  ADD CONSTRAINT `libreria_libro_id_serviciosEmpresa__b03078c4_fk_libreria_` FOREIGN KEY (`id_serviciosEmpresa_id`) REFERENCES `libreria_serviciosempresa` (`id`);

--
-- Filtros para la tabla `libreria_productoempresa`
--
ALTER TABLE `libreria_productoempresa`
  ADD CONSTRAINT `libreria_productoemp_perfilEmpresa_id_f0601856_fk_libreria_` FOREIGN KEY (`perfilEmpresa_id`) REFERENCES `libreria_libro` (`id`);

--
-- Filtros para la tabla `libreria_redessocialesempresa`
--
ALTER TABLE `libreria_redessocialesempresa`
  ADD CONSTRAINT `libreria_redessocial_perfilEmpresa_id_3829f5f4_fk_libreria_` FOREIGN KEY (`perfilEmpresa_id`) REFERENCES `libreria_libro` (`id`);

--
-- Filtros para la tabla `libreria_respuesta`
--
ALTER TABLE `libreria_respuesta`
  ADD CONSTRAINT `libreria_respuesta_evaluacion_id_a2419cb9_fk_libreria_` FOREIGN KEY (`evaluacion_id`) REFERENCES `libreria_evaluaciones` (`id`);

--
-- Filtros para la tabla `libreria_serviciosempresa`
--
ALTER TABLE `libreria_serviciosempresa`
  ADD CONSTRAINT `libreria_serviciosem_perfilEmpresa_id_64f88841_fk_libreria_` FOREIGN KEY (`perfilEmpresa_id`) REFERENCES `libreria_libro` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
