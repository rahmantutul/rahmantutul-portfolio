-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2025 at 09:59 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zelio`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(120) NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'lECWN8m5hQjrMiZWre7w5jqQqZxAAGVK', 1, '2024-10-20 21:49:07', '2024-10-20 21:49:07', '2024-10-20 21:49:07');

-- --------------------------------------------------------

--
-- Table structure for table `admin_notifications`
--

CREATE TABLE `admin_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `action_label` varchar(191) DEFAULT NULL,
  `action_url` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audit_histories`
--

CREATE TABLE `audit_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `module` varchar(60) NOT NULL,
  `request` longtext DEFAULT NULL,
  `action` varchar(120) NOT NULL,
  `user_agent` text DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `reference_user` bigint(20) UNSIGNED NOT NULL,
  `reference_id` bigint(20) UNSIGNED NOT NULL,
  `reference_name` varchar(191) NOT NULL,
  `type` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audit_histories`
--

INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(11, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '127.0.0.1', 0, 1, 'Rahman Tutul', 'info', '2024-12-15 10:36:51', '2024-12-15 10:36:51'),
(12, 1, 'page', '{\"name\":\"Home\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"slug\":\"http:\\/\\/127.0.0.1:8000\",\"description\":null,\"content\":\"<shortcode>[hero-banner style=\\\"2\\\" title=\\\"Senior &lt;span&gt;{Full Stack}&lt;\\/span&gt;Web &amp; App developer\\\" subtitle=\\\"Hey, I\\u2019m James\\\" description=\\\"With expertise in cutting-edge technologies such as &lt;span&gt;NodeJS&lt;\\/span&gt;, &lt;span&gt;React&lt;\\/span&gt;, &lt;span&gt;Angular&lt;\\/span&gt;, and &lt;span&gt;Laravel&lt;\\/span&gt;... I deliver web solutions that are both innovative and robust.\\\" primary_button_text=\\\"Download My CV\\\" primary_button_link=\\\"\\/storage\\/main\\/resume\\/cv.pdf\\\" primary_button_icon=\\\"ti ti-download\\\" below_button_text=\\\"...and more\\\" quantity=\\\"5\\\" name_1=\\\"Next.js\\\" image_1=\\\"code\\/skills\\/1.png\\\" name_2=\\\"Firebase\\\" image_2=\\\"code\\/skills\\/2.png\\\" name_3=\\\"MongoDB\\\" image_3=\\\"code\\/skills\\/3.png\\\" name_4=\\\"Node.js\\\" image_4=\\\"code\\/skills\\/4.png\\\" name_5=\\\"Tailwind CSS\\\" image_5=\\\"code\\/skills\\/5.png\\\" background_image=\\\"code\\/general\\/hero-bg.png\\\" background_image_dark=\\\"code\\/general\\/hero-bg-dark.png\\\" right_image=\\\"code\\/general\\/people.png\\\" right_image_shape=\\\"code\\/general\\/people-shape.png\\\" enable_lazy_loading=\\\"no\\\"][\\/hero-banner]<\\/shortcode><shortcode>[stats-counter style=\\\"2\\\" quantity=\\\"4\\\" label_1=\\\"Years Experience\\\" icon_1=\\\"ti ti-crown\\\" count_1=\\\"12\\\" label_2=\\\"Projects Completed\\\" icon_2=\\\"ti ti-device-desktop\\\" count_2=\\\"250\\\" label_3=\\\"Satisfied Clients\\\" icon_3=\\\"ti ti-heart-spark\\\" count_3=\\\"680\\\" label_4=\\\"Awards Winner\\\" icon_4=\\\"ti ti-award\\\" count_4=\\\"18\\\" background_image=\\\"code\\/general\\/static-bg.png\\\" enable_lazy_loading=\\\"no\\\"][\\/stats-counter]<\\/shortcode><shortcode>[corporation title=\\\"More than +168 &lt;span&gt;companies &lt;br \\/&gt;&lt;\\/span&gt; trusted &lt;span&gt;worldwide_&lt;\\/span&gt;\\\" subtitle=\\\"Cooperation\\\" companies_quantity=\\\"9\\\" companies_name_1=\\\"bravado\\\" companies_image_1=\\\"code\\/companies\\/bravado.png\\\" companies_name_2=\\\"gocardless\\\" companies_image_2=\\\"code\\/companies\\/gocardless.png\\\" companies_name_3=\\\"google\\\" companies_image_3=\\\"code\\/companies\\/google.png\\\" companies_name_4=\\\"intercom\\\" companies_image_4=\\\"code\\/companies\\/intercom.png\\\" companies_name_5=\\\"monzo\\\" companies_image_5=\\\"code\\/companies\\/monzo.png\\\" companies_name_6=\\\"samsung\\\" companies_image_6=\\\"code\\/companies\\/samsung.png\\\" companies_name_7=\\\"spotify\\\" companies_image_7=\\\"code\\/companies\\/spotify.png\\\" companies_name_8=\\\"stripe\\\" companies_image_8=\\\"code\\/companies\\/stripe.png\\\" companies_name_9=\\\"visa\\\" companies_image_9=\\\"code\\/companies\\/visa.png\\\" contact_avatar=\\\"code\\/general\\/corporation-avatar.png\\\" journey_title=\\\"Git Journaling\\\" journeys_quantity=\\\"5\\\" journeys_date_1=\\\"15 Jul\\\" journeys_title_1=\\\"Muzzilla-streaming-API-services-for-Python\\\" journeys_date_2=\\\"30 Jun\\\" journeys_title_2=\\\"ChatHub-Chat-application-VueJs-Mongodb\\\" journeys_date_3=\\\"26 May\\\" journeys_title_3=\\\"DineEasy-coffee-tea-reservation-system\\\" journeys_date_4=\\\"17 Apr\\\" journeys_title_4=\\\"FinanceBuddy-Personal-finance-tracker\\\" journeys_date_5=\\\"05 Mar\\\" journeys_title_5=\\\"TuneStream-Music-streaming-service-API\\\" contacts_quantity=\\\"3\\\" contacts_label_1=\\\"skype\\\" contacts_content_1=\\\"james.doe\\\" contacts_url_1=\\\"skype:james.doe?chat\\\" contacts_icon_1=\\\"ti ti-brand-skype\\\" contacts_label_2=\\\"email\\\" contacts_content_2=\\\"contact@botble.com\\\" contacts_url_2=\\\"mailto:contact@botble.com\\\" contacts_icon_2=\\\"ti ti-mail\\\" contacts_label_3=\\\"phone\\\" contacts_content_3=\\\"+1-234-567-8901\\\" contacts_url_3=\\\"tel:+1-234-567-8901\\\" contacts_icon_3=\\\"ti ti-phone\\\" enable_lazy_loading=\\\"yes\\\"][\\/corporation]<\\/shortcode><shortcode>[services style=\\\"2\\\" title=\\\"Designing solutions &lt;span class=\'text-300\'&gt;customized&lt;br&gt;to meet your requirements&lt;\\/span&gt;\\\" subtitle=\\\"Cooperation\\\" service_ids=\\\"1,6,3,5,4,2\\\" bottom_text=\\\"Excited to take on &lt;span class=\'text-dark\'&gt;new projects&lt;\\/span&gt; and collaborate. &lt;br&gt;Let\\\\\'s chat about your ideas. &lt;a href=\'\' class=\'text-primary-2\'&gt;Reach out!&lt;\\/a&gt;\\\" enable_lazy_loading=\\\"yes\\\"][\\/services]<\\/shortcode><shortcode>[experience title=\\\"+12 &lt;span&gt;years of&lt;\\/span&gt; passion &lt;span&gt;for &lt;br \\/&gt; programming techniques&lt;\\/span&gt;\\\" subtitle=\\\"Experience\\\" role_title=\\\"Senior Software Engineer\\\" role_description=\\\"Led development of scalable web applications, &lt;span&gt;improving performance&lt;\\/span&gt; and user experience for millions of users. \\\\n Implemented machine learning algorithms to enhance search functionality. \\\\n Collaborated with cross-functional teams to integrate new features seamlessly.\\\" experiences_quantity=\\\"4\\\" experiences_date_1=\\\"2018 - Present\\\" experiences_title_1=\\\"Google\\\" experiences_logo_1=\\\"code\\/experiences\\/google.png\\\" experiences_date_2=\\\"2012 - 2015\\\" experiences_title_2=\\\"Twitter (X)\\\" experiences_logo_2=\\\"code\\/experiences\\/x.png\\\" experiences_date_3=\\\"2018 - Present\\\" experiences_title_3=\\\"Amazon\\\" experiences_logo_3=\\\"code\\/experiences\\/amazon.png\\\" experiences_date_4=\\\"2010 - 2012\\\" experiences_title_4=\\\"Paypal\\\" experiences_logo_4=\\\"code\\/experiences\\/paypal.png\\\" skills_quantity=\\\"5\\\" skills_name_1=\\\"Python\\\" skills_name_2=\\\"TensorFlow\\\" skills_name_3=\\\"Angular\\\" skills_name_4=\\\"Kubernetes\\\" skills_name_5=\\\"GCP\\\" background_image=\\\"code\\/general\\/services-bg.png\\\" enable_lazy_loading=\\\"yes\\\"][\\/experience]<\\/shortcode><shortcode>[resume style=\\\"2\\\" resume_1_title=\\\"Education\\\" resume_1_title_icon=\\\"ti ti-school\\\" resume_1_quantity=\\\"4\\\" resume_1_time_1=\\\"2018 - 2019\\\" resume_1_title_1=\\\"Certification in UX Design\\\" resume_1_subtitle_1=\\\"University of Stanford\\\" resume_1_time_2=\\\"2017 - 2018\\\" resume_1_title_2=\\\"Certification in Web Dev\\\" resume_1_subtitle_2=\\\"University of Stanford\\\" resume_1_time_3=\\\"2014 - 2016\\\" resume_1_title_3=\\\"Advanced UX\\/UI Bootcamp\\\" resume_1_subtitle_3=\\\"Design Academy\\\" resume_1_time_4=\\\"2012 - 2013\\\" resume_1_title_4=\\\"Certification in Graphic Design\\\" resume_1_subtitle_4=\\\"Coursera\\\" resume_2_title=\\\"Experience\\\" resume_2_title_icon=\\\"ti ti-stars\\\" resume_2_quantity=\\\"4\\\" resume_2_time_1=\\\"2019 - Present\\\" resume_2_title_1=\\\"Senior UI\\/UX Designer\\\" resume_2_subtitle_1=\\\"Leader in Creative team\\\" resume_2_time_2=\\\"2016 - 2019\\\" resume_2_title_2=\\\"UI\\/UX Designer\\\" resume_2_subtitle_2=\\\"Tech Startup\\\" resume_2_time_3=\\\"2014 - 2016\\\" resume_2_title_3=\\\"Freelance UI\\/UX Designer\\\" resume_2_subtitle_3=\\\"Self-Employed\\\" resume_2_time_4=\\\"2012 - 2014\\\" resume_2_title_4=\\\"Junior UI Designer\\\" resume_2_subtitle_4=\\\"Web Solutions team\\\" enable_lazy_loading=\\\"yes\\\"][\\/resume]<\\/shortcode><shortcode>[projects style=\\\"2\\\" title=\\\"My Recent Works\\\" subtitle=\\\"Projects\\\" project_ids=\\\"1,2,3,4\\\" background_image=\\\"code\\/general\\/projects-bg.png\\\" enable_lazy_loading=\\\"yes\\\"][\\/projects]<\\/shortcode><shortcode>[skills style=\\\"2\\\" title=\\\"My Skills\\\" subtitle=\\\"Projects\\\" quantity=\\\"9\\\" name_1=\\\"Next.js\\\" image_1=\\\"code\\/skills\\/1.png\\\" name_2=\\\"Firebase\\\" image_2=\\\"code\\/skills\\/2.png\\\" name_3=\\\"MongoDB\\\" image_3=\\\"code\\/skills\\/3.png\\\" name_4=\\\"Node.js\\\" image_4=\\\"code\\/skills\\/4.png\\\" name_5=\\\"Tailwind CSS\\\" image_5=\\\"code\\/skills\\/5.png\\\" name_6=\\\"React\\\" image_6=\\\"code\\/skills\\/6.png\\\" name_7=\\\"Vue.js\\\" image_7=\\\"code\\/skills\\/7.png\\\" name_8=\\\"Angular\\\" image_8=\\\"code\\/skills\\/8.png\\\" name_9=\\\"Laravel\\\" image_9=\\\"code\\/skills\\/9.png\\\" list_quantity=\\\"5\\\" list_label_1=\\\"Front-End\\\" list_content_1=\\\"HTML, CSS, JavaScript, React, Angular\\\" list_label_2=\\\"Back-End\\\" list_content_2=\\\"Node.js, Express, Python, Django\\\" list_label_3=\\\"Databases\\\" list_content_3=\\\"MySQL, PostgreSQL, MongoDB\\\" list_label_4=\\\"Tools &amp; Platforms\\\" list_content_4=\\\"Git, Docker, AWS, Heroku\\\" list_label_5=\\\"Others\\\" list_content_5=\\\"RESTful APIs, GraphQL, Agile Methodologies\\\" enable_lazy_loading=\\\"yes\\\"][\\/skills]<\\/shortcode><shortcode>[blog-posts style=\\\"2\\\" paginate=\\\"3\\\" title=\\\"Recent blog\\\" subtitle=\\\"Latest Posts\\\" enable_lazy_loading=\\\"yes\\\"][\\/blog-posts]<\\/shortcode><shortcode>[contact-form style=\\\"2\\\" display_fields=\\\"phone,email,subject,address\\\" mandatory_fields=\\\"email,subject\\\" title=\\\"Let\'s connect\\\" quantity=\\\"4\\\" label_1=\\\"Phone\\\" content_1=\\\"+1-234-567-8901\\\" icon_1=\\\"ti ti-phone\\\" url_1=\\\"tel:+1-234-567-8901\\\" label_2=\\\"Email\\\" content_2=\\\"contact@botble.com\\\" icon_2=\\\"ti ti-mail\\\" url_2=\\\"mailto:contact@botble.com\\\" label_3=\\\"X (Twitter)\\\" content_3=\\\"Botble Technologies\\\" icon_3=\\\"ti ti-user\\\" url_3=\\\"https:\\/\\/x.com\\/botble\\\" label_4=\\\"Address\\\" content_4=\\\"0811 Erdman Prairie, Joaville CA\\\" icon_4=\\\"ti ti-map\\\" url_4=\\\"https:\\/\\/google.com\\/maps\\\"][\\/contact-form]<\\/shortcode>\",\"submitter\":\"apply\",\"status\":\"published\",\"template\":\"default\",\"image\":\"257611305-391568315912249-333814.png\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'Home', 'primary', '2024-12-15 11:55:00', '2024-12-15 11:55:00'),
(13, 1, 'page', '{\"name\":\"Home\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"slug\":\"http:\\/\\/127.0.0.1:8000\",\"description\":null,\"content\":\"<shortcode>[hero-banner style=\\\"2\\\" title=\\\"Senior &lt;span&gt;{Full Stack}&lt;\\/span&gt;Web &amp; App developer\\\" subtitle=\\\"Hey, I\\u2019m James\\\" description=\\\"With expertise in cutting-edge technologies such as &lt;span&gt;NodeJS&lt;\\/span&gt;, &lt;span&gt;React&lt;\\/span&gt;, &lt;span&gt;Angular&lt;\\/span&gt;, and &lt;span&gt;Laravel&lt;\\/span&gt;... I deliver web solutions that are both innovative and robust.\\\" primary_button_text=\\\"Download My CV\\\" primary_button_link=\\\"\\/storage\\/main\\/resume\\/cv.pdf\\\" primary_button_icon=\\\"ti ti-download\\\" below_button_text=\\\"...and more\\\" quantity=\\\"5\\\" name_1=\\\"Next.js\\\" image_1=\\\"code\\/skills\\/1.png\\\" name_2=\\\"Firebase\\\" image_2=\\\"code\\/skills\\/2.png\\\" name_3=\\\"MongoDB\\\" image_3=\\\"code\\/skills\\/3.png\\\" name_4=\\\"Node.js\\\" image_4=\\\"code\\/skills\\/4.png\\\" name_5=\\\"Tailwind CSS\\\" image_5=\\\"code\\/skills\\/5.png\\\" background_image=\\\"code\\/general\\/hero-bg.png\\\" background_image_dark=\\\"code\\/general\\/hero-bg-dark.png\\\" right_image=\\\"code\\/general\\/people.png\\\" right_image_shape=\\\"code\\/general\\/people-shape.png\\\" enable_lazy_loading=\\\"no\\\"][\\/hero-banner]<\\/shortcode><shortcode>[stats-counter style=\\\"2\\\" quantity=\\\"4\\\" label_1=\\\"Years Experience\\\" icon_1=\\\"ti ti-crown\\\" count_1=\\\"12\\\" label_2=\\\"Projects Completed\\\" icon_2=\\\"ti ti-device-desktop\\\" count_2=\\\"250\\\" label_3=\\\"Satisfied Clients\\\" icon_3=\\\"ti ti-heart-spark\\\" count_3=\\\"680\\\" label_4=\\\"Awards Winner\\\" icon_4=\\\"ti ti-award\\\" count_4=\\\"18\\\" background_image=\\\"code\\/general\\/static-bg.png\\\" enable_lazy_loading=\\\"no\\\"][\\/stats-counter]<\\/shortcode><shortcode>[corporation title=\\\"More than +168 &lt;span&gt;companies &lt;br \\/&gt;&lt;\\/span&gt; trusted &lt;span&gt;worldwide_&lt;\\/span&gt;\\\" subtitle=\\\"Cooperation\\\" companies_quantity=\\\"9\\\" companies_name_1=\\\"bravado\\\" companies_image_1=\\\"code\\/companies\\/bravado.png\\\" companies_name_2=\\\"gocardless\\\" companies_image_2=\\\"code\\/companies\\/gocardless.png\\\" companies_name_3=\\\"google\\\" companies_image_3=\\\"code\\/companies\\/google.png\\\" companies_name_4=\\\"intercom\\\" companies_image_4=\\\"code\\/companies\\/intercom.png\\\" companies_name_5=\\\"monzo\\\" companies_image_5=\\\"code\\/companies\\/monzo.png\\\" companies_name_6=\\\"samsung\\\" companies_image_6=\\\"code\\/companies\\/samsung.png\\\" companies_name_7=\\\"spotify\\\" companies_image_7=\\\"code\\/companies\\/spotify.png\\\" companies_name_8=\\\"stripe\\\" companies_image_8=\\\"code\\/companies\\/stripe.png\\\" companies_name_9=\\\"visa\\\" companies_image_9=\\\"code\\/companies\\/visa.png\\\" contact_avatar=\\\"code\\/general\\/corporation-avatar.png\\\" journey_title=\\\"Git Journaling\\\" journeys_quantity=\\\"5\\\" journeys_date_1=\\\"15 Jul\\\" journeys_title_1=\\\"Muzzilla-streaming-API-services-for-Python\\\" journeys_date_2=\\\"30 Jun\\\" journeys_title_2=\\\"ChatHub-Chat-application-VueJs-Mongodb\\\" journeys_date_3=\\\"26 May\\\" journeys_title_3=\\\"DineEasy-coffee-tea-reservation-system\\\" journeys_date_4=\\\"17 Apr\\\" journeys_title_4=\\\"FinanceBuddy-Personal-finance-tracker\\\" journeys_date_5=\\\"05 Mar\\\" journeys_title_5=\\\"TuneStream-Music-streaming-service-API\\\" contacts_quantity=\\\"3\\\" contacts_label_1=\\\"skype\\\" contacts_content_1=\\\"james.doe\\\" contacts_url_1=\\\"skype:james.doe?chat\\\" contacts_icon_1=\\\"ti ti-brand-skype\\\" contacts_label_2=\\\"email\\\" contacts_content_2=\\\"contact@botble.com\\\" contacts_url_2=\\\"mailto:contact@botble.com\\\" contacts_icon_2=\\\"ti ti-mail\\\" contacts_label_3=\\\"phone\\\" contacts_content_3=\\\"+1-234-567-8901\\\" contacts_url_3=\\\"tel:+1-234-567-8901\\\" contacts_icon_3=\\\"ti ti-phone\\\" enable_lazy_loading=\\\"yes\\\"][\\/corporation]<\\/shortcode><shortcode>[services style=\\\"2\\\" title=\\\"Designing solutions &lt;span class=\'text-300\'&gt;customized&lt;br&gt;to meet your requirements&lt;\\/span&gt;\\\" subtitle=\\\"Cooperation\\\" service_ids=\\\"1,6,3,5,4,2\\\" bottom_text=\\\"Excited to take on &lt;span class=\'text-dark\'&gt;new projects&lt;\\/span&gt; and collaborate. &lt;br&gt;Let\\\\\'s chat about your ideas. &lt;a href=\'\' class=\'text-primary-2\'&gt;Reach out!&lt;\\/a&gt;\\\" enable_lazy_loading=\\\"yes\\\"][\\/services]<\\/shortcode><shortcode>[experience title=\\\"+12 &lt;span&gt;years of&lt;\\/span&gt; passion &lt;span&gt;for &lt;br \\/&gt; programming techniques&lt;\\/span&gt;\\\" subtitle=\\\"Experience\\\" role_title=\\\"Senior Software Engineer\\\" role_description=\\\"Led development of scalable web applications, &lt;span&gt;improving performance&lt;\\/span&gt; and user experience for millions of users. \\\\n Implemented machine learning algorithms to enhance search functionality. \\\\n Collaborated with cross-functional teams to integrate new features seamlessly.\\\" experiences_quantity=\\\"4\\\" experiences_date_1=\\\"2018 - Present\\\" experiences_title_1=\\\"Google\\\" experiences_logo_1=\\\"code\\/experiences\\/google.png\\\" experiences_date_2=\\\"2012 - 2015\\\" experiences_title_2=\\\"Twitter (X)\\\" experiences_logo_2=\\\"code\\/experiences\\/x.png\\\" experiences_date_3=\\\"2018 - Present\\\" experiences_title_3=\\\"Amazon\\\" experiences_logo_3=\\\"code\\/experiences\\/amazon.png\\\" experiences_date_4=\\\"2010 - 2012\\\" experiences_title_4=\\\"Paypal\\\" experiences_logo_4=\\\"code\\/experiences\\/paypal.png\\\" skills_quantity=\\\"5\\\" skills_name_1=\\\"Python\\\" skills_name_2=\\\"TensorFlow\\\" skills_name_3=\\\"Angular\\\" skills_name_4=\\\"Kubernetes\\\" skills_name_5=\\\"GCP\\\" background_image=\\\"code\\/general\\/services-bg.png\\\" enable_lazy_loading=\\\"yes\\\"][\\/experience]<\\/shortcode><shortcode>[resume style=\\\"2\\\" resume_1_title=\\\"Education\\\" resume_1_title_icon=\\\"ti ti-school\\\" resume_1_quantity=\\\"4\\\" resume_1_time_1=\\\"2018 - 2019\\\" resume_1_title_1=\\\"Certification in UX Design\\\" resume_1_subtitle_1=\\\"University of Stanford\\\" resume_1_time_2=\\\"2017 - 2018\\\" resume_1_title_2=\\\"Certification in Web Dev\\\" resume_1_subtitle_2=\\\"University of Stanford\\\" resume_1_time_3=\\\"2014 - 2016\\\" resume_1_title_3=\\\"Advanced UX\\/UI Bootcamp\\\" resume_1_subtitle_3=\\\"Design Academy\\\" resume_1_time_4=\\\"2012 - 2013\\\" resume_1_title_4=\\\"Certification in Graphic Design\\\" resume_1_subtitle_4=\\\"Coursera\\\" resume_2_title=\\\"Experience\\\" resume_2_title_icon=\\\"ti ti-stars\\\" resume_2_quantity=\\\"4\\\" resume_2_time_1=\\\"2019 - Present\\\" resume_2_title_1=\\\"Senior UI\\/UX Designer\\\" resume_2_subtitle_1=\\\"Leader in Creative team\\\" resume_2_time_2=\\\"2016 - 2019\\\" resume_2_title_2=\\\"UI\\/UX Designer\\\" resume_2_subtitle_2=\\\"Tech Startup\\\" resume_2_time_3=\\\"2014 - 2016\\\" resume_2_title_3=\\\"Freelance UI\\/UX Designer\\\" resume_2_subtitle_3=\\\"Self-Employed\\\" resume_2_time_4=\\\"2012 - 2014\\\" resume_2_title_4=\\\"Junior UI Designer\\\" resume_2_subtitle_4=\\\"Web Solutions team\\\" enable_lazy_loading=\\\"yes\\\"][\\/resume]<\\/shortcode><shortcode>[projects style=\\\"2\\\" title=\\\"My Recent Works\\\" subtitle=\\\"Projects\\\" project_ids=\\\"1,2,3,4\\\" background_image=\\\"code\\/general\\/projects-bg.png\\\" enable_lazy_loading=\\\"yes\\\"][\\/projects]<\\/shortcode><shortcode>[skills style=\\\"2\\\" title=\\\"My Skills\\\" subtitle=\\\"Projects\\\" quantity=\\\"9\\\" name_1=\\\"Next.js\\\" image_1=\\\"code\\/skills\\/1.png\\\" name_2=\\\"Firebase\\\" image_2=\\\"code\\/skills\\/2.png\\\" name_3=\\\"MongoDB\\\" image_3=\\\"code\\/skills\\/3.png\\\" name_4=\\\"Node.js\\\" image_4=\\\"code\\/skills\\/4.png\\\" name_5=\\\"Tailwind CSS\\\" image_5=\\\"code\\/skills\\/5.png\\\" name_6=\\\"React\\\" image_6=\\\"code\\/skills\\/6.png\\\" name_7=\\\"Vue.js\\\" image_7=\\\"code\\/skills\\/7.png\\\" name_8=\\\"Angular\\\" image_8=\\\"code\\/skills\\/8.png\\\" name_9=\\\"Laravel\\\" image_9=\\\"code\\/skills\\/9.png\\\" list_quantity=\\\"5\\\" list_label_1=\\\"Front-End\\\" list_content_1=\\\"HTML, CSS, JavaScript, React, Angular\\\" list_label_2=\\\"Back-End\\\" list_content_2=\\\"Node.js, Express, Python, Django\\\" list_label_3=\\\"Databases\\\" list_content_3=\\\"MySQL, PostgreSQL, MongoDB\\\" list_label_4=\\\"Tools &amp; Platforms\\\" list_content_4=\\\"Git, Docker, AWS, Heroku\\\" list_label_5=\\\"Others\\\" list_content_5=\\\"RESTful APIs, GraphQL, Agile Methodologies\\\" enable_lazy_loading=\\\"yes\\\"][\\/skills]<\\/shortcode><shortcode>[blog-posts style=\\\"2\\\" paginate=\\\"3\\\" title=\\\"Recent blog\\\" subtitle=\\\"Latest Posts\\\" enable_lazy_loading=\\\"yes\\\"][\\/blog-posts]<\\/shortcode><shortcode>[contact-form style=\\\"2\\\" display_fields=\\\"phone,email,subject,address\\\" mandatory_fields=\\\"email,subject\\\" title=\\\"Let\'s connect\\\" quantity=\\\"4\\\" label_1=\\\"Phone\\\" content_1=\\\"+1-234-567-8901\\\" icon_1=\\\"ti ti-phone\\\" url_1=\\\"tel:+1-234-567-8901\\\" label_2=\\\"Email\\\" content_2=\\\"contact@botble.com\\\" icon_2=\\\"ti ti-mail\\\" url_2=\\\"mailto:contact@botble.com\\\" label_3=\\\"X (Twitter)\\\" content_3=\\\"Botble Technologies\\\" icon_3=\\\"ti ti-user\\\" url_3=\\\"https:\\/\\/x.com\\/botble\\\" label_4=\\\"Address\\\" content_4=\\\"0811 Erdman Prairie, Joaville CA\\\" icon_4=\\\"ti ti-map\\\" url_4=\\\"https:\\/\\/google.com\\/maps\\\"][\\/contact-form]<\\/shortcode>\",\"submitter\":\"apply\",\"status\":\"published\",\"template\":\"default\",\"image\":\"257611305-391568315912249-333814.png\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'Home', 'primary', '2024-12-15 11:59:44', '2024-12-15 11:59:44'),
(14, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '127.0.0.1', 0, 1, 'Rahman Tutul', 'info', '2024-12-17 08:00:59', '2024-12-17 08:00:59'),
(15, 1, 'page', '{\"name\":\"Home\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"slug\":\"http:\\/\\/127.0.0.1:8000\",\"description\":null,\"content\":\"<shortcode>[hero-banner style=\\\"2\\\" title=\\\"Senior &lt;span&gt;{Full Stack}&lt;\\/span&gt;Web &amp; App developer\\\" subtitle=\\\"Hey, Rahman Tutul\\\" description=\\\"With expertise in cutting-edge technologies such as &lt;span&gt;PHP&lt;\\/span&gt;, &lt;span&gt;ReactJs&lt;\\/span&gt;, &lt;span&gt;MySql&lt;\\/span&gt;, and &lt;span&gt;Laravel&lt;\\/span&gt;... I deliver web solutions that are both innovative and robust.\\\" primary_button_text=\\\"Download My CV\\\" primary_button_link=\\\"\\/storage\\/main\\/resume\\/cv.pdf\\\" primary_button_icon=\\\"ti ti-download\\\" below_button_text=\\\"...and more\\\" quantity=\\\"5\\\" name_1=\\\"Laravel\\\" image_1=\\\"php-icon-2048x2048-zjxns1zh.png\\\" name_2=\\\"Firebase\\\" image_2=\\\"code\\/skills\\/2.png\\\" name_3=\\\"MongoDB\\\" image_3=\\\"code\\/skills\\/3.png\\\" name_4=\\\"Node.js\\\" image_4=\\\"code\\/skills\\/4.png\\\" name_5=\\\"Tailwind CSS\\\" image_5=\\\"code\\/skills\\/5.png\\\" background_image=\\\"code\\/general\\/hero-bg.png\\\" background_image_dark=\\\"code\\/general\\/hero-bg-dark.png\\\" right_image=\\\"people.png\\\" right_image_shape=\\\"code\\/general\\/people-shape.png\\\" enable_lazy_loading=\\\"no\\\"][\\/hero-banner]<\\/shortcode><shortcode>[stats-counter style=\\\"2\\\" quantity=\\\"4\\\" label_1=\\\"Years Experience\\\" icon_1=\\\"ti ti-crown\\\" count_1=\\\"12\\\" label_2=\\\"Projects Completed\\\" icon_2=\\\"ti ti-device-desktop\\\" count_2=\\\"250\\\" label_3=\\\"Satisfied Clients\\\" icon_3=\\\"ti ti-heart-spark\\\" count_3=\\\"680\\\" label_4=\\\"Awards Winner\\\" icon_4=\\\"ti ti-award\\\" count_4=\\\"18\\\" background_image=\\\"code\\/general\\/static-bg.png\\\" enable_lazy_loading=\\\"no\\\"][\\/stats-counter]<\\/shortcode><shortcode>[corporation title=\\\"More than +168 &lt;span&gt;companies &lt;br \\/&gt;&lt;\\/span&gt; trusted &lt;span&gt;worldwide_&lt;\\/span&gt;\\\" subtitle=\\\"Cooperation\\\" companies_quantity=\\\"9\\\" companies_name_1=\\\"bravado\\\" companies_image_1=\\\"code\\/companies\\/bravado.png\\\" companies_name_2=\\\"gocardless\\\" companies_image_2=\\\"code\\/companies\\/gocardless.png\\\" companies_name_3=\\\"google\\\" companies_image_3=\\\"code\\/companies\\/google.png\\\" companies_name_4=\\\"intercom\\\" companies_image_4=\\\"code\\/companies\\/intercom.png\\\" companies_name_5=\\\"monzo\\\" companies_image_5=\\\"code\\/companies\\/monzo.png\\\" companies_name_6=\\\"samsung\\\" companies_image_6=\\\"code\\/companies\\/samsung.png\\\" companies_name_7=\\\"spotify\\\" companies_image_7=\\\"code\\/companies\\/spotify.png\\\" companies_name_8=\\\"stripe\\\" companies_image_8=\\\"code\\/companies\\/stripe.png\\\" companies_name_9=\\\"visa\\\" companies_image_9=\\\"code\\/companies\\/visa.png\\\" contact_avatar=\\\"code\\/general\\/corporation-avatar.png\\\" journey_title=\\\"Git Journaling\\\" journeys_quantity=\\\"5\\\" journeys_date_1=\\\"15 Jul\\\" journeys_title_1=\\\"Muzzilla-streaming-API-services-for-Python\\\" journeys_date_2=\\\"30 Jun\\\" journeys_title_2=\\\"ChatHub-Chat-application-VueJs-Mongodb\\\" journeys_date_3=\\\"26 May\\\" journeys_title_3=\\\"DineEasy-coffee-tea-reservation-system\\\" journeys_date_4=\\\"17 Apr\\\" journeys_title_4=\\\"FinanceBuddy-Personal-finance-tracker\\\" journeys_date_5=\\\"05 Mar\\\" journeys_title_5=\\\"TuneStream-Music-streaming-service-API\\\" contacts_quantity=\\\"3\\\" contacts_label_1=\\\"skype\\\" contacts_content_1=\\\"james.doe\\\" contacts_url_1=\\\"skype:james.doe?chat\\\" contacts_icon_1=\\\"ti ti-brand-skype\\\" contacts_label_2=\\\"email\\\" contacts_content_2=\\\"contact@botble.com\\\" contacts_url_2=\\\"mailto:contact@botble.com\\\" contacts_icon_2=\\\"ti ti-mail\\\" contacts_label_3=\\\"phone\\\" contacts_content_3=\\\"+1-234-567-8901\\\" contacts_url_3=\\\"tel:+1-234-567-8901\\\" contacts_icon_3=\\\"ti ti-phone\\\" enable_lazy_loading=\\\"yes\\\"][\\/corporation]<\\/shortcode><shortcode>[services style=\\\"2\\\" title=\\\"Designing solutions &lt;span class=\'text-300\'&gt;customized&lt;br&gt;to meet your requirements&lt;\\/span&gt;\\\" subtitle=\\\"Cooperation\\\" service_ids=\\\"1,6,3,5,4,2\\\" bottom_text=\\\"Excited to take on &lt;span class=\'text-dark\'&gt;new projects&lt;\\/span&gt; and collaborate. &lt;br&gt;Let\\\\\'s chat about your ideas. &lt;a href=\'\' class=\'text-primary-2\'&gt;Reach out!&lt;\\/a&gt;\\\" enable_lazy_loading=\\\"yes\\\"][\\/services]<\\/shortcode><shortcode>[experience title=\\\"+12 &lt;span&gt;years of&lt;\\/span&gt; passion &lt;span&gt;for &lt;br \\/&gt; programming techniques&lt;\\/span&gt;\\\" subtitle=\\\"Experience\\\" role_title=\\\"Senior Software Engineer\\\" role_description=\\\"Led development of scalable web applications, &lt;span&gt;improving performance&lt;\\/span&gt; and user experience for millions of users. \\\\n Implemented machine learning algorithms to enhance search functionality. \\\\n Collaborated with cross-functional teams to integrate new features seamlessly.\\\" experiences_quantity=\\\"4\\\" experiences_date_1=\\\"2018 - Present\\\" experiences_title_1=\\\"Google\\\" experiences_logo_1=\\\"code\\/experiences\\/google.png\\\" experiences_date_2=\\\"2012 - 2015\\\" experiences_title_2=\\\"Twitter (X)\\\" experiences_logo_2=\\\"code\\/experiences\\/x.png\\\" experiences_date_3=\\\"2018 - Present\\\" experiences_title_3=\\\"Amazon\\\" experiences_logo_3=\\\"code\\/experiences\\/amazon.png\\\" experiences_date_4=\\\"2010 - 2012\\\" experiences_title_4=\\\"Paypal\\\" experiences_logo_4=\\\"code\\/experiences\\/paypal.png\\\" skills_quantity=\\\"5\\\" skills_name_1=\\\"Python\\\" skills_name_2=\\\"TensorFlow\\\" skills_name_3=\\\"Angular\\\" skills_name_4=\\\"Kubernetes\\\" skills_name_5=\\\"GCP\\\" background_image=\\\"code\\/general\\/services-bg.png\\\" enable_lazy_loading=\\\"yes\\\"][\\/experience]<\\/shortcode><shortcode>[resume style=\\\"2\\\" resume_1_title=\\\"Education\\\" resume_1_title_icon=\\\"ti ti-school\\\" resume_1_quantity=\\\"4\\\" resume_1_time_1=\\\"2018 - 2019\\\" resume_1_title_1=\\\"Certification in UX Design\\\" resume_1_subtitle_1=\\\"University of Stanford\\\" resume_1_time_2=\\\"2017 - 2018\\\" resume_1_title_2=\\\"Certification in Web Dev\\\" resume_1_subtitle_2=\\\"University of Stanford\\\" resume_1_time_3=\\\"2014 - 2016\\\" resume_1_title_3=\\\"Advanced UX\\/UI Bootcamp\\\" resume_1_subtitle_3=\\\"Design Academy\\\" resume_1_time_4=\\\"2012 - 2013\\\" resume_1_title_4=\\\"Certification in Graphic Design\\\" resume_1_subtitle_4=\\\"Coursera\\\" resume_2_title=\\\"Experience\\\" resume_2_title_icon=\\\"ti ti-stars\\\" resume_2_quantity=\\\"4\\\" resume_2_time_1=\\\"2019 - Present\\\" resume_2_title_1=\\\"Senior UI\\/UX Designer\\\" resume_2_subtitle_1=\\\"Leader in Creative team\\\" resume_2_time_2=\\\"2016 - 2019\\\" resume_2_title_2=\\\"UI\\/UX Designer\\\" resume_2_subtitle_2=\\\"Tech Startup\\\" resume_2_time_3=\\\"2014 - 2016\\\" resume_2_title_3=\\\"Freelance UI\\/UX Designer\\\" resume_2_subtitle_3=\\\"Self-Employed\\\" resume_2_time_4=\\\"2012 - 2014\\\" resume_2_title_4=\\\"Junior UI Designer\\\" resume_2_subtitle_4=\\\"Web Solutions team\\\" enable_lazy_loading=\\\"yes\\\"][\\/resume]<\\/shortcode><shortcode>[projects style=\\\"2\\\" title=\\\"My Recent Works\\\" subtitle=\\\"Projects\\\" project_ids=\\\"1,2,3,4\\\" background_image=\\\"code\\/general\\/projects-bg.png\\\" enable_lazy_loading=\\\"yes\\\"][\\/projects]<\\/shortcode><shortcode>[skills style=\\\"2\\\" title=\\\"My Skills\\\" subtitle=\\\"Projects\\\" quantity=\\\"9\\\" name_1=\\\"Next.js\\\" image_1=\\\"code\\/skills\\/1.png\\\" name_2=\\\"Firebase\\\" image_2=\\\"code\\/skills\\/2.png\\\" name_3=\\\"MongoDB\\\" image_3=\\\"code\\/skills\\/3.png\\\" name_4=\\\"Node.js\\\" image_4=\\\"code\\/skills\\/4.png\\\" name_5=\\\"Tailwind CSS\\\" image_5=\\\"code\\/skills\\/5.png\\\" name_6=\\\"React\\\" image_6=\\\"code\\/skills\\/6.png\\\" name_7=\\\"Vue.js\\\" image_7=\\\"code\\/skills\\/7.png\\\" name_8=\\\"Angular\\\" image_8=\\\"code\\/skills\\/8.png\\\" name_9=\\\"Laravel\\\" image_9=\\\"code\\/skills\\/9.png\\\" list_quantity=\\\"5\\\" list_label_1=\\\"Front-End\\\" list_content_1=\\\"HTML, CSS, JavaScript, React, Angular\\\" list_label_2=\\\"Back-End\\\" list_content_2=\\\"Node.js, Express, Python, Django\\\" list_label_3=\\\"Databases\\\" list_content_3=\\\"MySQL, PostgreSQL, MongoDB\\\" list_label_4=\\\"Tools &amp; Platforms\\\" list_content_4=\\\"Git, Docker, AWS, Heroku\\\" list_label_5=\\\"Others\\\" list_content_5=\\\"RESTful APIs, GraphQL, Agile Methodologies\\\" enable_lazy_loading=\\\"yes\\\"][\\/skills]<\\/shortcode><shortcode>[blog-posts style=\\\"2\\\" paginate=\\\"3\\\" title=\\\"Recent blog\\\" subtitle=\\\"Latest Posts\\\" enable_lazy_loading=\\\"yes\\\"][\\/blog-posts]<\\/shortcode><shortcode>[contact-form style=\\\"2\\\" display_fields=\\\"phone,email,subject,address\\\" mandatory_fields=\\\"email,subject\\\" title=\\\"Let\'s connect\\\" quantity=\\\"4\\\" label_1=\\\"Phone\\\" content_1=\\\"+1-234-567-8901\\\" icon_1=\\\"ti ti-phone\\\" url_1=\\\"tel:+1-234-567-8901\\\" label_2=\\\"Email\\\" content_2=\\\"contact@botble.com\\\" icon_2=\\\"ti ti-mail\\\" url_2=\\\"mailto:contact@botble.com\\\" label_3=\\\"X (Twitter)\\\" content_3=\\\"Botble Technologies\\\" icon_3=\\\"ti ti-user\\\" url_3=\\\"https:\\/\\/x.com\\/botble\\\" label_4=\\\"Address\\\" content_4=\\\"0811 Erdman Prairie, Joaville CA\\\" icon_4=\\\"ti ti-map\\\" url_4=\\\"https:\\/\\/google.com\\/maps\\\"][\\/contact-form]<\\/shortcode>\",\"submitter\":\"apply\",\"status\":\"published\",\"template\":\"default\",\"image\":\"257611305-391568315912249-333814.png\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'Home', 'primary', '2024-12-17 08:10:21', '2024-12-17 08:10:21'),
(16, 1, 'page', '{\"name\":\"Home\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"slug\":\"http:\\/\\/127.0.0.1:8000\",\"description\":null,\"content\":\"<shortcode>[hero-banner style=\\\"2\\\" title=\\\"Senior &lt;span&gt;{Full Stack}&lt;\\/span&gt;Web &amp; App developer\\\" subtitle=\\\"Hey, Rahman Tutul\\\" description=\\\"With expertise in cutting-edge technologies such as &lt;span&gt;PHP&lt;\\/span&gt;, &lt;span&gt;ReactJs&lt;\\/span&gt;, &lt;span&gt;MySql&lt;\\/span&gt;, and &lt;span&gt;Laravel&lt;\\/span&gt;... I deliver web solutions that are both innovative and robust.\\\" primary_button_text=\\\"Download My CV\\\" primary_button_link=\\\"\\/storage\\/main\\/resume\\/cv.pdf\\\" primary_button_icon=\\\"ti ti-download\\\" below_button_text=\\\"...and more\\\" quantity=\\\"7\\\" name_1=\\\"PHP\\\" image_1=\\\"11-118738-php-logo-png-circle-transparent-png.png\\\" name_2=\\\"JavaScript\\\" image_2=\\\"javascript-logo-editorial-illustrative-white-background-eps-download-vector-jpeg-banner-javascript-l.webp\\\" name_3=\\\"MySql\\\" image_3=\\\"mysql.jpg\\\" name_4=\\\"ReactJs\\\" image_4=\\\"react-icon-512x512-u6e60ayf.png\\\" name_5=\\\"Tailwind CSS\\\" image_5=\\\"5.png\\\" name_6=\\\"Bootstrap\\\" name_7=\\\"jQuery\\\" background_image=\\\"code\\/general\\/hero-bg.png\\\" background_image_dark=\\\"code\\/general\\/hero-bg-dark.png\\\" right_image=\\\"people.png\\\" right_image_shape=\\\"code\\/general\\/people-shape.png\\\" enable_lazy_loading=\\\"no\\\"][\\/hero-banner]<\\/shortcode><shortcode>[stats-counter style=\\\"2\\\" quantity=\\\"4\\\" label_1=\\\"Years Experience\\\" icon_1=\\\"ti ti-crown\\\" count_1=\\\"12\\\" label_2=\\\"Projects Completed\\\" icon_2=\\\"ti ti-device-desktop\\\" count_2=\\\"250\\\" label_3=\\\"Satisfied Clients\\\" icon_3=\\\"ti ti-heart-spark\\\" count_3=\\\"680\\\" label_4=\\\"Awards Winner\\\" icon_4=\\\"ti ti-award\\\" count_4=\\\"18\\\" background_image=\\\"code\\/general\\/static-bg.png\\\" enable_lazy_loading=\\\"no\\\"][\\/stats-counter]<\\/shortcode><shortcode>[corporation title=\\\"More than +168 &lt;span&gt;companies &lt;br \\/&gt;&lt;\\/span&gt; trusted &lt;span&gt;worldwide_&lt;\\/span&gt;\\\" subtitle=\\\"Cooperation\\\" companies_quantity=\\\"9\\\" companies_name_1=\\\"bravado\\\" companies_image_1=\\\"code\\/companies\\/bravado.png\\\" companies_name_2=\\\"gocardless\\\" companies_image_2=\\\"code\\/companies\\/gocardless.png\\\" companies_name_3=\\\"google\\\" companies_image_3=\\\"code\\/companies\\/google.png\\\" companies_name_4=\\\"intercom\\\" companies_image_4=\\\"code\\/companies\\/intercom.png\\\" companies_name_5=\\\"monzo\\\" companies_image_5=\\\"code\\/companies\\/monzo.png\\\" companies_name_6=\\\"samsung\\\" companies_image_6=\\\"code\\/companies\\/samsung.png\\\" companies_name_7=\\\"spotify\\\" companies_image_7=\\\"code\\/companies\\/spotify.png\\\" companies_name_8=\\\"stripe\\\" companies_image_8=\\\"code\\/companies\\/stripe.png\\\" companies_name_9=\\\"visa\\\" companies_image_9=\\\"code\\/companies\\/visa.png\\\" contact_avatar=\\\"code\\/general\\/corporation-avatar.png\\\" journey_title=\\\"Git Journaling\\\" journeys_quantity=\\\"5\\\" journeys_date_1=\\\"15 Jul\\\" journeys_title_1=\\\"Muzzilla-streaming-API-services-for-Python\\\" journeys_date_2=\\\"30 Jun\\\" journeys_title_2=\\\"ChatHub-Chat-application-VueJs-Mongodb\\\" journeys_date_3=\\\"26 May\\\" journeys_title_3=\\\"DineEasy-coffee-tea-reservation-system\\\" journeys_date_4=\\\"17 Apr\\\" journeys_title_4=\\\"FinanceBuddy-Personal-finance-tracker\\\" journeys_date_5=\\\"05 Mar\\\" journeys_title_5=\\\"TuneStream-Music-streaming-service-API\\\" contacts_quantity=\\\"3\\\" contacts_label_1=\\\"skype\\\" contacts_content_1=\\\"james.doe\\\" contacts_url_1=\\\"skype:james.doe?chat\\\" contacts_icon_1=\\\"ti ti-brand-skype\\\" contacts_label_2=\\\"email\\\" contacts_content_2=\\\"contact@botble.com\\\" contacts_url_2=\\\"mailto:contact@botble.com\\\" contacts_icon_2=\\\"ti ti-mail\\\" contacts_label_3=\\\"phone\\\" contacts_content_3=\\\"+1-234-567-8901\\\" contacts_url_3=\\\"tel:+1-234-567-8901\\\" contacts_icon_3=\\\"ti ti-phone\\\" enable_lazy_loading=\\\"yes\\\"][\\/corporation]<\\/shortcode><shortcode>[services style=\\\"2\\\" title=\\\"Designing solutions &lt;span class=\'text-300\'&gt;customized&lt;br&gt;to meet your requirements&lt;\\/span&gt;\\\" subtitle=\\\"Cooperation\\\" service_ids=\\\"1,6,3,5,4,2\\\" bottom_text=\\\"Excited to take on &lt;span class=\'text-dark\'&gt;new projects&lt;\\/span&gt; and collaborate. &lt;br&gt;Let\\\\\'s chat about your ideas. &lt;a href=\'\' class=\'text-primary-2\'&gt;Reach out!&lt;\\/a&gt;\\\" enable_lazy_loading=\\\"yes\\\"][\\/services]<\\/shortcode><shortcode>[experience title=\\\"+12 &lt;span&gt;years of&lt;\\/span&gt; passion &lt;span&gt;for &lt;br \\/&gt; programming techniques&lt;\\/span&gt;\\\" subtitle=\\\"Experience\\\" role_title=\\\"Senior Software Engineer\\\" role_description=\\\"Led development of scalable web applications, &lt;span&gt;improving performance&lt;\\/span&gt; and user experience for millions of users. \\\\n Implemented machine learning algorithms to enhance search functionality. \\\\n Collaborated with cross-functional teams to integrate new features seamlessly.\\\" experiences_quantity=\\\"4\\\" experiences_date_1=\\\"2018 - Present\\\" experiences_title_1=\\\"Google\\\" experiences_logo_1=\\\"code\\/experiences\\/google.png\\\" experiences_date_2=\\\"2012 - 2015\\\" experiences_title_2=\\\"Twitter (X)\\\" experiences_logo_2=\\\"code\\/experiences\\/x.png\\\" experiences_date_3=\\\"2018 - Present\\\" experiences_title_3=\\\"Amazon\\\" experiences_logo_3=\\\"code\\/experiences\\/amazon.png\\\" experiences_date_4=\\\"2010 - 2012\\\" experiences_title_4=\\\"Paypal\\\" experiences_logo_4=\\\"code\\/experiences\\/paypal.png\\\" skills_quantity=\\\"5\\\" skills_name_1=\\\"Python\\\" skills_name_2=\\\"TensorFlow\\\" skills_name_3=\\\"Angular\\\" skills_name_4=\\\"Kubernetes\\\" skills_name_5=\\\"GCP\\\" background_image=\\\"code\\/general\\/services-bg.png\\\" enable_lazy_loading=\\\"yes\\\"][\\/experience]<\\/shortcode><shortcode>[resume style=\\\"2\\\" resume_1_title=\\\"Education\\\" resume_1_title_icon=\\\"ti ti-school\\\" resume_1_quantity=\\\"4\\\" resume_1_time_1=\\\"2018 - 2019\\\" resume_1_title_1=\\\"Certification in UX Design\\\" resume_1_subtitle_1=\\\"University of Stanford\\\" resume_1_time_2=\\\"2017 - 2018\\\" resume_1_title_2=\\\"Certification in Web Dev\\\" resume_1_subtitle_2=\\\"University of Stanford\\\" resume_1_time_3=\\\"2014 - 2016\\\" resume_1_title_3=\\\"Advanced UX\\/UI Bootcamp\\\" resume_1_subtitle_3=\\\"Design Academy\\\" resume_1_time_4=\\\"2012 - 2013\\\" resume_1_title_4=\\\"Certification in Graphic Design\\\" resume_1_subtitle_4=\\\"Coursera\\\" resume_2_title=\\\"Experience\\\" resume_2_title_icon=\\\"ti ti-stars\\\" resume_2_quantity=\\\"4\\\" resume_2_time_1=\\\"2019 - Present\\\" resume_2_title_1=\\\"Senior UI\\/UX Designer\\\" resume_2_subtitle_1=\\\"Leader in Creative team\\\" resume_2_time_2=\\\"2016 - 2019\\\" resume_2_title_2=\\\"UI\\/UX Designer\\\" resume_2_subtitle_2=\\\"Tech Startup\\\" resume_2_time_3=\\\"2014 - 2016\\\" resume_2_title_3=\\\"Freelance UI\\/UX Designer\\\" resume_2_subtitle_3=\\\"Self-Employed\\\" resume_2_time_4=\\\"2012 - 2014\\\" resume_2_title_4=\\\"Junior UI Designer\\\" resume_2_subtitle_4=\\\"Web Solutions team\\\" enable_lazy_loading=\\\"yes\\\"][\\/resume]<\\/shortcode><shortcode>[projects style=\\\"2\\\" title=\\\"My Recent Works\\\" subtitle=\\\"Projects\\\" project_ids=\\\"1,2,3,4\\\" background_image=\\\"code\\/general\\/projects-bg.png\\\" enable_lazy_loading=\\\"yes\\\"][\\/projects]<\\/shortcode><shortcode>[skills style=\\\"2\\\" title=\\\"My Skills\\\" subtitle=\\\"Projects\\\" quantity=\\\"9\\\" name_1=\\\"Next.js\\\" image_1=\\\"code\\/skills\\/1.png\\\" name_2=\\\"Firebase\\\" image_2=\\\"code\\/skills\\/2.png\\\" name_3=\\\"MongoDB\\\" image_3=\\\"code\\/skills\\/3.png\\\" name_4=\\\"Node.js\\\" image_4=\\\"code\\/skills\\/4.png\\\" name_5=\\\"Tailwind CSS\\\" image_5=\\\"code\\/skills\\/5.png\\\" name_6=\\\"React\\\" image_6=\\\"code\\/skills\\/6.png\\\" name_7=\\\"Vue.js\\\" image_7=\\\"code\\/skills\\/7.png\\\" name_8=\\\"Angular\\\" image_8=\\\"code\\/skills\\/8.png\\\" name_9=\\\"Laravel\\\" image_9=\\\"code\\/skills\\/9.png\\\" list_quantity=\\\"5\\\" list_label_1=\\\"Front-End\\\" list_content_1=\\\"HTML, CSS, JavaScript, React, Angular\\\" list_label_2=\\\"Back-End\\\" list_content_2=\\\"Node.js, Express, Python, Django\\\" list_label_3=\\\"Databases\\\" list_content_3=\\\"MySQL, PostgreSQL, MongoDB\\\" list_label_4=\\\"Tools &amp; Platforms\\\" list_content_4=\\\"Git, Docker, AWS, Heroku\\\" list_label_5=\\\"Others\\\" list_content_5=\\\"RESTful APIs, GraphQL, Agile Methodologies\\\" enable_lazy_loading=\\\"yes\\\"][\\/skills]<\\/shortcode><shortcode>[blog-posts style=\\\"2\\\" paginate=\\\"3\\\" title=\\\"Recent blog\\\" subtitle=\\\"Latest Posts\\\" enable_lazy_loading=\\\"yes\\\"][\\/blog-posts]<\\/shortcode><shortcode>[contact-form style=\\\"2\\\" display_fields=\\\"phone,email,subject,address\\\" mandatory_fields=\\\"email,subject\\\" title=\\\"Let\'s connect\\\" quantity=\\\"4\\\" label_1=\\\"Phone\\\" content_1=\\\"+1-234-567-8901\\\" icon_1=\\\"ti ti-phone\\\" url_1=\\\"tel:+1-234-567-8901\\\" label_2=\\\"Email\\\" content_2=\\\"contact@botble.com\\\" icon_2=\\\"ti ti-mail\\\" url_2=\\\"mailto:contact@botble.com\\\" label_3=\\\"X (Twitter)\\\" content_3=\\\"Botble Technologies\\\" icon_3=\\\"ti ti-user\\\" url_3=\\\"https:\\/\\/x.com\\/botble\\\" label_4=\\\"Address\\\" content_4=\\\"0811 Erdman Prairie, Joaville CA\\\" icon_4=\\\"ti ti-map\\\" url_4=\\\"https:\\/\\/google.com\\/maps\\\"][\\/contact-form]<\\/shortcode>\",\"submitter\":\"apply\",\"status\":\"published\",\"template\":\"default\",\"image\":\"257611305-391568315912249-333814.png\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'Home', 'primary', '2024-12-17 08:22:47', '2024-12-17 08:22:47');
INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(17, 1, 'page', '{\"name\":\"Home\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"slug\":\"http:\\/\\/127.0.0.1:8000\",\"description\":null,\"content\":\"<shortcode>[hero-banner style=\\\"2\\\" title=\\\"Senior &lt;span&gt;{Full Stack}&lt;\\/span&gt;Web &amp; App developer\\\" subtitle=\\\"Hey, Rahman Tutul\\\" description=\\\"With expertise in cutting-edge technologies such as &lt;span&gt;PHP&lt;\\/span&gt;, &lt;span&gt;ReactJs&lt;\\/span&gt;, &lt;span&gt;MySql&lt;\\/span&gt;, and &lt;span&gt;Laravel&lt;\\/span&gt;... I deliver web solutions that are both innovative and robust.\\\" primary_button_text=\\\"Download My CV\\\" primary_button_link=\\\"\\/storage\\/main\\/resume\\/cv.pdf\\\" primary_button_icon=\\\"ti ti-download\\\" below_button_text=\\\"...and more\\\" quantity=\\\"5\\\" name_1=\\\"PHP\\\" image_1=\\\"11-118738-php-logo-png-circle-transparent-png.png\\\" name_2=\\\"JavaScript\\\" image_2=\\\"4.png\\\" name_3=\\\"MySql\\\" image_3=\\\"pngtree-mysql-database-service-code-coding-png-image-5289143.png\\\" name_4=\\\"ReactJs\\\" image_4=\\\"react-icon-512x512-u6e60ayf.png\\\" name_5=\\\"Tailwind CSS\\\" image_5=\\\"5.png\\\" name_6=\\\"Bootstrap\\\" name_7=\\\"jQuery\\\" background_image=\\\"code\\/general\\/hero-bg.png\\\" background_image_dark=\\\"code\\/general\\/hero-bg-dark.png\\\" right_image=\\\"people.png\\\" right_image_shape=\\\"code\\/general\\/people-shape.png\\\" enable_lazy_loading=\\\"no\\\"][\\/hero-banner]<\\/shortcode><shortcode>[stats-counter style=\\\"2\\\" quantity=\\\"4\\\" label_1=\\\"Years Experience\\\" icon_1=\\\"ti ti-crown\\\" count_1=\\\"12\\\" label_2=\\\"Projects Completed\\\" icon_2=\\\"ti ti-device-desktop\\\" count_2=\\\"250\\\" label_3=\\\"Satisfied Clients\\\" icon_3=\\\"ti ti-heart-spark\\\" count_3=\\\"680\\\" label_4=\\\"Awards Winner\\\" icon_4=\\\"ti ti-award\\\" count_4=\\\"18\\\" background_image=\\\"code\\/general\\/static-bg.png\\\" enable_lazy_loading=\\\"no\\\"][\\/stats-counter]<\\/shortcode><shortcode>[corporation title=\\\"More than +168 &lt;span&gt;companies &lt;br \\/&gt;&lt;\\/span&gt; trusted &lt;span&gt;worldwide_&lt;\\/span&gt;\\\" subtitle=\\\"Cooperation\\\" companies_quantity=\\\"9\\\" companies_name_1=\\\"bravado\\\" companies_image_1=\\\"code\\/companies\\/bravado.png\\\" companies_name_2=\\\"gocardless\\\" companies_image_2=\\\"code\\/companies\\/gocardless.png\\\" companies_name_3=\\\"google\\\" companies_image_3=\\\"code\\/companies\\/google.png\\\" companies_name_4=\\\"intercom\\\" companies_image_4=\\\"code\\/companies\\/intercom.png\\\" companies_name_5=\\\"monzo\\\" companies_image_5=\\\"code\\/companies\\/monzo.png\\\" companies_name_6=\\\"samsung\\\" companies_image_6=\\\"code\\/companies\\/samsung.png\\\" companies_name_7=\\\"spotify\\\" companies_image_7=\\\"code\\/companies\\/spotify.png\\\" companies_name_8=\\\"stripe\\\" companies_image_8=\\\"code\\/companies\\/stripe.png\\\" companies_name_9=\\\"visa\\\" companies_image_9=\\\"code\\/companies\\/visa.png\\\" contact_avatar=\\\"code\\/general\\/corporation-avatar.png\\\" journey_title=\\\"Git Journaling\\\" journeys_quantity=\\\"5\\\" journeys_date_1=\\\"15 Jul\\\" journeys_title_1=\\\"Muzzilla-streaming-API-services-for-Python\\\" journeys_date_2=\\\"30 Jun\\\" journeys_title_2=\\\"ChatHub-Chat-application-VueJs-Mongodb\\\" journeys_date_3=\\\"26 May\\\" journeys_title_3=\\\"DineEasy-coffee-tea-reservation-system\\\" journeys_date_4=\\\"17 Apr\\\" journeys_title_4=\\\"FinanceBuddy-Personal-finance-tracker\\\" journeys_date_5=\\\"05 Mar\\\" journeys_title_5=\\\"TuneStream-Music-streaming-service-API\\\" contacts_quantity=\\\"3\\\" contacts_label_1=\\\"skype\\\" contacts_content_1=\\\"james.doe\\\" contacts_url_1=\\\"skype:james.doe?chat\\\" contacts_icon_1=\\\"ti ti-brand-skype\\\" contacts_label_2=\\\"email\\\" contacts_content_2=\\\"contact@botble.com\\\" contacts_url_2=\\\"mailto:contact@botble.com\\\" contacts_icon_2=\\\"ti ti-mail\\\" contacts_label_3=\\\"phone\\\" contacts_content_3=\\\"+1-234-567-8901\\\" contacts_url_3=\\\"tel:+1-234-567-8901\\\" contacts_icon_3=\\\"ti ti-phone\\\" enable_lazy_loading=\\\"yes\\\"][\\/corporation]<\\/shortcode><shortcode>[services style=\\\"2\\\" title=\\\"Designing solutions &lt;span class=\'text-300\'&gt;customized&lt;br&gt;to meet your requirements&lt;\\/span&gt;\\\" subtitle=\\\"Cooperation\\\" service_ids=\\\"1,6,3,5,4,2\\\" bottom_text=\\\"Excited to take on &lt;span class=\'text-dark\'&gt;new projects&lt;\\/span&gt; and collaborate. &lt;br&gt;Let\\\\\'s chat about your ideas. &lt;a href=\'\' class=\'text-primary-2\'&gt;Reach out!&lt;\\/a&gt;\\\" enable_lazy_loading=\\\"yes\\\"][\\/services]<\\/shortcode><shortcode>[experience title=\\\"+12 &lt;span&gt;years of&lt;\\/span&gt; passion &lt;span&gt;for &lt;br \\/&gt; programming techniques&lt;\\/span&gt;\\\" subtitle=\\\"Experience\\\" role_title=\\\"Senior Software Engineer\\\" role_description=\\\"Led development of scalable web applications, &lt;span&gt;improving performance&lt;\\/span&gt; and user experience for millions of users. \\\\n Implemented machine learning algorithms to enhance search functionality. \\\\n Collaborated with cross-functional teams to integrate new features seamlessly.\\\" experiences_quantity=\\\"4\\\" experiences_date_1=\\\"2018 - Present\\\" experiences_title_1=\\\"Google\\\" experiences_logo_1=\\\"code\\/experiences\\/google.png\\\" experiences_date_2=\\\"2012 - 2015\\\" experiences_title_2=\\\"Twitter (X)\\\" experiences_logo_2=\\\"code\\/experiences\\/x.png\\\" experiences_date_3=\\\"2018 - Present\\\" experiences_title_3=\\\"Amazon\\\" experiences_logo_3=\\\"code\\/experiences\\/amazon.png\\\" experiences_date_4=\\\"2010 - 2012\\\" experiences_title_4=\\\"Paypal\\\" experiences_logo_4=\\\"code\\/experiences\\/paypal.png\\\" skills_quantity=\\\"5\\\" skills_name_1=\\\"Python\\\" skills_name_2=\\\"TensorFlow\\\" skills_name_3=\\\"Angular\\\" skills_name_4=\\\"Kubernetes\\\" skills_name_5=\\\"GCP\\\" background_image=\\\"code\\/general\\/services-bg.png\\\" enable_lazy_loading=\\\"yes\\\"][\\/experience]<\\/shortcode><shortcode>[resume style=\\\"2\\\" resume_1_title=\\\"Education\\\" resume_1_title_icon=\\\"ti ti-school\\\" resume_1_quantity=\\\"4\\\" resume_1_time_1=\\\"2018 - 2019\\\" resume_1_title_1=\\\"Certification in UX Design\\\" resume_1_subtitle_1=\\\"University of Stanford\\\" resume_1_time_2=\\\"2017 - 2018\\\" resume_1_title_2=\\\"Certification in Web Dev\\\" resume_1_subtitle_2=\\\"University of Stanford\\\" resume_1_time_3=\\\"2014 - 2016\\\" resume_1_title_3=\\\"Advanced UX\\/UI Bootcamp\\\" resume_1_subtitle_3=\\\"Design Academy\\\" resume_1_time_4=\\\"2012 - 2013\\\" resume_1_title_4=\\\"Certification in Graphic Design\\\" resume_1_subtitle_4=\\\"Coursera\\\" resume_2_title=\\\"Experience\\\" resume_2_title_icon=\\\"ti ti-stars\\\" resume_2_quantity=\\\"4\\\" resume_2_time_1=\\\"2019 - Present\\\" resume_2_title_1=\\\"Senior UI\\/UX Designer\\\" resume_2_subtitle_1=\\\"Leader in Creative team\\\" resume_2_time_2=\\\"2016 - 2019\\\" resume_2_title_2=\\\"UI\\/UX Designer\\\" resume_2_subtitle_2=\\\"Tech Startup\\\" resume_2_time_3=\\\"2014 - 2016\\\" resume_2_title_3=\\\"Freelance UI\\/UX Designer\\\" resume_2_subtitle_3=\\\"Self-Employed\\\" resume_2_time_4=\\\"2012 - 2014\\\" resume_2_title_4=\\\"Junior UI Designer\\\" resume_2_subtitle_4=\\\"Web Solutions team\\\" enable_lazy_loading=\\\"yes\\\"][\\/resume]<\\/shortcode><shortcode>[projects style=\\\"2\\\" title=\\\"My Recent Works\\\" subtitle=\\\"Projects\\\" project_ids=\\\"1,2,3,4\\\" background_image=\\\"code\\/general\\/projects-bg.png\\\" enable_lazy_loading=\\\"yes\\\"][\\/projects]<\\/shortcode><shortcode>[skills style=\\\"2\\\" title=\\\"My Skills\\\" subtitle=\\\"Projects\\\" quantity=\\\"9\\\" name_1=\\\"Next.js\\\" image_1=\\\"code\\/skills\\/1.png\\\" name_2=\\\"Firebase\\\" image_2=\\\"code\\/skills\\/2.png\\\" name_3=\\\"MongoDB\\\" image_3=\\\"code\\/skills\\/3.png\\\" name_4=\\\"Node.js\\\" image_4=\\\"code\\/skills\\/4.png\\\" name_5=\\\"Tailwind CSS\\\" image_5=\\\"code\\/skills\\/5.png\\\" name_6=\\\"React\\\" image_6=\\\"code\\/skills\\/6.png\\\" name_7=\\\"Vue.js\\\" image_7=\\\"code\\/skills\\/7.png\\\" name_8=\\\"Angular\\\" image_8=\\\"code\\/skills\\/8.png\\\" name_9=\\\"Laravel\\\" image_9=\\\"code\\/skills\\/9.png\\\" list_quantity=\\\"5\\\" list_label_1=\\\"Front-End\\\" list_content_1=\\\"HTML, CSS, JavaScript, React, Angular\\\" list_label_2=\\\"Back-End\\\" list_content_2=\\\"Node.js, Express, Python, Django\\\" list_label_3=\\\"Databases\\\" list_content_3=\\\"MySQL, PostgreSQL, MongoDB\\\" list_label_4=\\\"Tools &amp; Platforms\\\" list_content_4=\\\"Git, Docker, AWS, Heroku\\\" list_label_5=\\\"Others\\\" list_content_5=\\\"RESTful APIs, GraphQL, Agile Methodologies\\\" enable_lazy_loading=\\\"yes\\\"][\\/skills]<\\/shortcode><shortcode>[blog-posts style=\\\"2\\\" paginate=\\\"3\\\" title=\\\"Recent blog\\\" subtitle=\\\"Latest Posts\\\" enable_lazy_loading=\\\"yes\\\"][\\/blog-posts]<\\/shortcode><shortcode>[contact-form style=\\\"2\\\" display_fields=\\\"phone,email,subject,address\\\" mandatory_fields=\\\"email,subject\\\" title=\\\"Let\'s connect\\\" quantity=\\\"4\\\" label_1=\\\"Phone\\\" content_1=\\\"+1-234-567-8901\\\" icon_1=\\\"ti ti-phone\\\" url_1=\\\"tel:+1-234-567-8901\\\" label_2=\\\"Email\\\" content_2=\\\"contact@botble.com\\\" icon_2=\\\"ti ti-mail\\\" url_2=\\\"mailto:contact@botble.com\\\" label_3=\\\"X (Twitter)\\\" content_3=\\\"Botble Technologies\\\" icon_3=\\\"ti ti-user\\\" url_3=\\\"https:\\/\\/x.com\\/botble\\\" label_4=\\\"Address\\\" content_4=\\\"0811 Erdman Prairie, Joaville CA\\\" icon_4=\\\"ti ti-map\\\" url_4=\\\"https:\\/\\/google.com\\/maps\\\"][\\/contact-form]<\\/shortcode>\",\"submitter\":\"apply\",\"status\":\"published\",\"template\":\"default\",\"image\":\"257611305-391568315912249-333814.png\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'Home', 'primary', '2024-12-17 08:27:00', '2024-12-17 08:27:00'),
(18, 1, 'page', '{\"name\":\"Home\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"slug\":\"http:\\/\\/127.0.0.1:8000\",\"description\":null,\"content\":\"<shortcode>[hero-banner style=\\\"2\\\" title=\\\"Senior &lt;span&gt;{Full Stack}&lt;\\/span&gt;Web &amp; App developer\\\" subtitle=\\\"Hey, I\'m Rahman Tutul\\\" description=\\\"With expertise in cutting-edge technologies such as &lt;span&gt;PHP&lt;\\/span&gt;, &lt;span&gt;ReactJs&lt;\\/span&gt;, &lt;span&gt;MySql&lt;\\/span&gt;, and &lt;span&gt;Laravel&lt;\\/span&gt;... I deliver web solutions that are both innovative and robust.\\\" primary_button_text=\\\"Download My CV\\\" primary_button_link=\\\"\\/storage\\/main\\/resume\\/cv.pdf\\\" primary_button_icon=\\\"ti ti-download\\\" below_button_text=\\\"...and more\\\" quantity=\\\"5\\\" name_1=\\\"PHP\\\" image_1=\\\"11-118738-php-logo-png-circle-transparent-png.png\\\" name_2=\\\"JavaScript\\\" image_2=\\\"4.png\\\" name_3=\\\"MySql\\\" image_3=\\\"pngtree-mysql-database-service-code-coding-png-image-5289143.png\\\" name_4=\\\"ReactJs\\\" image_4=\\\"react-icon-512x512-u6e60ayf.png\\\" name_5=\\\"Tailwind CSS\\\" image_5=\\\"5.png\\\" background_image=\\\"code\\/general\\/hero-bg.png\\\" background_image_dark=\\\"code\\/general\\/hero-bg-dark.png\\\" right_image=\\\"people.png\\\" right_image_shape=\\\"code\\/general\\/people-shape.png\\\" enable_lazy_loading=\\\"no\\\"][\\/hero-banner]<\\/shortcode><shortcode>[stats-counter style=\\\"2\\\" quantity=\\\"4\\\" label_1=\\\"Years Experience\\\" icon_1=\\\"ti ti-crown\\\" count_1=\\\"12\\\" label_2=\\\"Projects Completed\\\" icon_2=\\\"ti ti-device-desktop\\\" count_2=\\\"250\\\" label_3=\\\"Satisfied Clients\\\" icon_3=\\\"ti ti-heart-spark\\\" count_3=\\\"680\\\" label_4=\\\"Awards Winner\\\" icon_4=\\\"ti ti-award\\\" count_4=\\\"18\\\" background_image=\\\"code\\/general\\/static-bg.png\\\" enable_lazy_loading=\\\"no\\\"][\\/stats-counter]<\\/shortcode><shortcode>[corporation title=\\\"More than +168 &lt;span&gt;companies &lt;br \\/&gt;&lt;\\/span&gt; trusted &lt;span&gt;worldwide_&lt;\\/span&gt;\\\" subtitle=\\\"Cooperation\\\" companies_quantity=\\\"9\\\" companies_name_1=\\\"bravado\\\" companies_image_1=\\\"code\\/companies\\/bravado.png\\\" companies_name_2=\\\"gocardless\\\" companies_image_2=\\\"code\\/companies\\/gocardless.png\\\" companies_name_3=\\\"google\\\" companies_image_3=\\\"code\\/companies\\/google.png\\\" companies_name_4=\\\"intercom\\\" companies_image_4=\\\"code\\/companies\\/intercom.png\\\" companies_name_5=\\\"monzo\\\" companies_image_5=\\\"code\\/companies\\/monzo.png\\\" companies_name_6=\\\"samsung\\\" companies_image_6=\\\"code\\/companies\\/samsung.png\\\" companies_name_7=\\\"spotify\\\" companies_image_7=\\\"code\\/companies\\/spotify.png\\\" companies_name_8=\\\"stripe\\\" companies_image_8=\\\"code\\/companies\\/stripe.png\\\" companies_name_9=\\\"visa\\\" companies_image_9=\\\"code\\/companies\\/visa.png\\\" contact_avatar=\\\"code\\/general\\/corporation-avatar.png\\\" journey_title=\\\"Git Journaling\\\" journeys_quantity=\\\"5\\\" journeys_date_1=\\\"15 Jul\\\" journeys_title_1=\\\"Muzzilla-streaming-API-services-for-Python\\\" journeys_date_2=\\\"30 Jun\\\" journeys_title_2=\\\"ChatHub-Chat-application-VueJs-Mongodb\\\" journeys_date_3=\\\"26 May\\\" journeys_title_3=\\\"DineEasy-coffee-tea-reservation-system\\\" journeys_date_4=\\\"17 Apr\\\" journeys_title_4=\\\"FinanceBuddy-Personal-finance-tracker\\\" journeys_date_5=\\\"05 Mar\\\" journeys_title_5=\\\"TuneStream-Music-streaming-service-API\\\" contacts_quantity=\\\"3\\\" contacts_label_1=\\\"skype\\\" contacts_content_1=\\\"james.doe\\\" contacts_url_1=\\\"skype:james.doe?chat\\\" contacts_icon_1=\\\"ti ti-brand-skype\\\" contacts_label_2=\\\"email\\\" contacts_content_2=\\\"contact@botble.com\\\" contacts_url_2=\\\"mailto:contact@botble.com\\\" contacts_icon_2=\\\"ti ti-mail\\\" contacts_label_3=\\\"phone\\\" contacts_content_3=\\\"+1-234-567-8901\\\" contacts_url_3=\\\"tel:+1-234-567-8901\\\" contacts_icon_3=\\\"ti ti-phone\\\" enable_lazy_loading=\\\"yes\\\"][\\/corporation]<\\/shortcode><shortcode>[services style=\\\"2\\\" title=\\\"Designing solutions &lt;span class=\'text-300\'&gt;customized&lt;br&gt;to meet your requirements&lt;\\/span&gt;\\\" subtitle=\\\"Cooperation\\\" service_ids=\\\"1,6,3,5,4,2\\\" bottom_text=\\\"Excited to take on &lt;span class=\'text-dark\'&gt;new projects&lt;\\/span&gt; and collaborate. &lt;br&gt;Let\\\\\'s chat about your ideas. &lt;a href=\'\' class=\'text-primary-2\'&gt;Reach out!&lt;\\/a&gt;\\\" enable_lazy_loading=\\\"yes\\\"][\\/services]<\\/shortcode><shortcode>[experience title=\\\"+12 &lt;span&gt;years of&lt;\\/span&gt; passion &lt;span&gt;for &lt;br \\/&gt; programming techniques&lt;\\/span&gt;\\\" subtitle=\\\"Experience\\\" role_title=\\\"Senior Software Engineer\\\" role_description=\\\"Led development of scalable web applications, &lt;span&gt;improving performance&lt;\\/span&gt; and user experience for millions of users. \\\\n Implemented machine learning algorithms to enhance search functionality. \\\\n Collaborated with cross-functional teams to integrate new features seamlessly.\\\" experiences_quantity=\\\"4\\\" experiences_date_1=\\\"2018 - Present\\\" experiences_title_1=\\\"Google\\\" experiences_logo_1=\\\"code\\/experiences\\/google.png\\\" experiences_date_2=\\\"2012 - 2015\\\" experiences_title_2=\\\"Twitter (X)\\\" experiences_logo_2=\\\"code\\/experiences\\/x.png\\\" experiences_date_3=\\\"2018 - Present\\\" experiences_title_3=\\\"Amazon\\\" experiences_logo_3=\\\"code\\/experiences\\/amazon.png\\\" experiences_date_4=\\\"2010 - 2012\\\" experiences_title_4=\\\"Paypal\\\" experiences_logo_4=\\\"code\\/experiences\\/paypal.png\\\" skills_quantity=\\\"5\\\" skills_name_1=\\\"Python\\\" skills_name_2=\\\"TensorFlow\\\" skills_name_3=\\\"Angular\\\" skills_name_4=\\\"Kubernetes\\\" skills_name_5=\\\"GCP\\\" background_image=\\\"code\\/general\\/services-bg.png\\\" enable_lazy_loading=\\\"yes\\\"][\\/experience]<\\/shortcode><shortcode>[resume style=\\\"2\\\" resume_1_title=\\\"Education\\\" resume_1_title_icon=\\\"ti ti-school\\\" resume_1_quantity=\\\"4\\\" resume_1_time_1=\\\"2018 - 2019\\\" resume_1_title_1=\\\"Certification in UX Design\\\" resume_1_subtitle_1=\\\"University of Stanford\\\" resume_1_time_2=\\\"2017 - 2018\\\" resume_1_title_2=\\\"Certification in Web Dev\\\" resume_1_subtitle_2=\\\"University of Stanford\\\" resume_1_time_3=\\\"2014 - 2016\\\" resume_1_title_3=\\\"Advanced UX\\/UI Bootcamp\\\" resume_1_subtitle_3=\\\"Design Academy\\\" resume_1_time_4=\\\"2012 - 2013\\\" resume_1_title_4=\\\"Certification in Graphic Design\\\" resume_1_subtitle_4=\\\"Coursera\\\" resume_2_title=\\\"Experience\\\" resume_2_title_icon=\\\"ti ti-stars\\\" resume_2_quantity=\\\"4\\\" resume_2_time_1=\\\"2019 - Present\\\" resume_2_title_1=\\\"Senior UI\\/UX Designer\\\" resume_2_subtitle_1=\\\"Leader in Creative team\\\" resume_2_time_2=\\\"2016 - 2019\\\" resume_2_title_2=\\\"UI\\/UX Designer\\\" resume_2_subtitle_2=\\\"Tech Startup\\\" resume_2_time_3=\\\"2014 - 2016\\\" resume_2_title_3=\\\"Freelance UI\\/UX Designer\\\" resume_2_subtitle_3=\\\"Self-Employed\\\" resume_2_time_4=\\\"2012 - 2014\\\" resume_2_title_4=\\\"Junior UI Designer\\\" resume_2_subtitle_4=\\\"Web Solutions team\\\" enable_lazy_loading=\\\"yes\\\"][\\/resume]<\\/shortcode><shortcode>[projects style=\\\"2\\\" title=\\\"My Recent Works\\\" subtitle=\\\"Projects\\\" project_ids=\\\"1,2,3,4\\\" background_image=\\\"code\\/general\\/projects-bg.png\\\" enable_lazy_loading=\\\"yes\\\"][\\/projects]<\\/shortcode><shortcode>[skills style=\\\"2\\\" title=\\\"My Skills\\\" subtitle=\\\"Projects\\\" quantity=\\\"9\\\" name_1=\\\"Next.js\\\" image_1=\\\"code\\/skills\\/1.png\\\" name_2=\\\"Firebase\\\" image_2=\\\"code\\/skills\\/2.png\\\" name_3=\\\"MongoDB\\\" image_3=\\\"code\\/skills\\/3.png\\\" name_4=\\\"Node.js\\\" image_4=\\\"code\\/skills\\/4.png\\\" name_5=\\\"Tailwind CSS\\\" image_5=\\\"code\\/skills\\/5.png\\\" name_6=\\\"React\\\" image_6=\\\"code\\/skills\\/6.png\\\" name_7=\\\"Vue.js\\\" image_7=\\\"code\\/skills\\/7.png\\\" name_8=\\\"Angular\\\" image_8=\\\"code\\/skills\\/8.png\\\" name_9=\\\"Laravel\\\" image_9=\\\"code\\/skills\\/9.png\\\" list_quantity=\\\"5\\\" list_label_1=\\\"Front-End\\\" list_content_1=\\\"HTML, CSS, JavaScript, React, Angular\\\" list_label_2=\\\"Back-End\\\" list_content_2=\\\"Node.js, Express, Python, Django\\\" list_label_3=\\\"Databases\\\" list_content_3=\\\"MySQL, PostgreSQL, MongoDB\\\" list_label_4=\\\"Tools &amp; Platforms\\\" list_content_4=\\\"Git, Docker, AWS, Heroku\\\" list_label_5=\\\"Others\\\" list_content_5=\\\"RESTful APIs, GraphQL, Agile Methodologies\\\" enable_lazy_loading=\\\"yes\\\"][\\/skills]<\\/shortcode><shortcode>[blog-posts style=\\\"2\\\" paginate=\\\"3\\\" title=\\\"Recent blog\\\" subtitle=\\\"Latest Posts\\\" enable_lazy_loading=\\\"yes\\\"][\\/blog-posts]<\\/shortcode><shortcode>[contact-form style=\\\"2\\\" display_fields=\\\"phone,email,subject,address\\\" mandatory_fields=\\\"email,subject\\\" title=\\\"Let\'s connect\\\" quantity=\\\"4\\\" label_1=\\\"Phone\\\" content_1=\\\"+1-234-567-8901\\\" icon_1=\\\"ti ti-phone\\\" url_1=\\\"tel:+1-234-567-8901\\\" label_2=\\\"Email\\\" content_2=\\\"contact@botble.com\\\" icon_2=\\\"ti ti-mail\\\" url_2=\\\"mailto:contact@botble.com\\\" label_3=\\\"X (Twitter)\\\" content_3=\\\"Botble Technologies\\\" icon_3=\\\"ti ti-user\\\" url_3=\\\"https:\\/\\/x.com\\/botble\\\" label_4=\\\"Address\\\" content_4=\\\"0811 Erdman Prairie, Joaville CA\\\" icon_4=\\\"ti ti-map\\\" url_4=\\\"https:\\/\\/google.com\\/maps\\\"][\\/contact-form]<\\/shortcode>\",\"submitter\":\"apply\",\"status\":\"published\",\"template\":\"default\",\"image\":\"257611305-391568315912249-333814.png\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'Home', 'primary', '2024-12-17 09:19:36', '2024-12-17 09:19:36'),
(19, 1, 'page', '{\"name\":\"Home\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"slug\":\"http:\\/\\/127.0.0.1:8000\",\"description\":null,\"content\":\"<shortcode>[hero-banner style=\\\"2\\\" title=\\\"Senior &lt;span&gt;{Full Stack}&lt;\\/span&gt;Web &amp; App developer\\\" subtitle=\\\"Hey,I\'m Rahman Tutul\\\" description=\\\"With expertise in cutting-edge technologies such as &lt;span&gt;PHP&lt;\\/span&gt;, &lt;span&gt;ReactJs&lt;\\/span&gt;, &lt;span&gt;MySql&lt;\\/span&gt;, and &lt;span&gt;Laravel&lt;\\/span&gt;... I deliver web solutions that are both innovative and robust.\\\" primary_button_text=\\\"Download My CV\\\" primary_button_link=\\\"\\/storage\\/main\\/resume\\/cv.pdf\\\" primary_button_icon=\\\"ti ti-download\\\" below_button_text=\\\"...and more\\\" quantity=\\\"5\\\" name_1=\\\"PHP\\\" image_1=\\\"11-118738-php-logo-png-circle-transparent-png.png\\\" name_2=\\\"JavaScript\\\" image_2=\\\"4.png\\\" name_3=\\\"MySql\\\" image_3=\\\"pngtree-mysql-database-service-code-coding-png-image-5289143.png\\\" name_4=\\\"ReactJs\\\" image_4=\\\"react-icon-512x512-u6e60ayf.png\\\" name_5=\\\"Tailwind CSS\\\" image_5=\\\"5.png\\\" background_image=\\\"code\\/general\\/hero-bg.png\\\" background_image_dark=\\\"code\\/general\\/hero-bg-dark.png\\\" right_image=\\\"people.png\\\" right_image_shape=\\\"code\\/general\\/people-shape.png\\\" enable_lazy_loading=\\\"no\\\"][\\/hero-banner]<\\/shortcode><shortcode>[stats-counter style=\\\"2\\\" quantity=\\\"4\\\" label_1=\\\"Years Experience\\\" icon_1=\\\"ti ti-crown\\\" count_1=\\\"12\\\" label_2=\\\"Projects Completed\\\" icon_2=\\\"ti ti-device-desktop\\\" count_2=\\\"250\\\" label_3=\\\"Satisfied Clients\\\" icon_3=\\\"ti ti-heart-spark\\\" count_3=\\\"680\\\" label_4=\\\"Awards Winner\\\" icon_4=\\\"ti ti-award\\\" count_4=\\\"18\\\" background_image=\\\"code\\/general\\/static-bg.png\\\" enable_lazy_loading=\\\"no\\\"][\\/stats-counter]<\\/shortcode><shortcode>[corporation title=\\\"More than +168 &lt;span&gt;companies &lt;br \\/&gt;&lt;\\/span&gt; trusted &lt;span&gt;worldwide_&lt;\\/span&gt;\\\" subtitle=\\\"Cooperation\\\" companies_quantity=\\\"9\\\" companies_name_1=\\\"bravado\\\" companies_image_1=\\\"code\\/companies\\/bravado.png\\\" companies_name_2=\\\"gocardless\\\" companies_image_2=\\\"code\\/companies\\/gocardless.png\\\" companies_name_3=\\\"google\\\" companies_image_3=\\\"code\\/companies\\/google.png\\\" companies_name_4=\\\"intercom\\\" companies_image_4=\\\"code\\/companies\\/intercom.png\\\" companies_name_5=\\\"monzo\\\" companies_image_5=\\\"code\\/companies\\/monzo.png\\\" companies_name_6=\\\"samsung\\\" companies_image_6=\\\"code\\/companies\\/samsung.png\\\" companies_name_7=\\\"spotify\\\" companies_image_7=\\\"code\\/companies\\/spotify.png\\\" companies_name_8=\\\"stripe\\\" companies_image_8=\\\"code\\/companies\\/stripe.png\\\" companies_name_9=\\\"visa\\\" companies_image_9=\\\"code\\/companies\\/visa.png\\\" contact_avatar=\\\"code\\/general\\/corporation-avatar.png\\\" journey_title=\\\"Git Journaling\\\" journeys_quantity=\\\"5\\\" journeys_date_1=\\\"15 Jul\\\" journeys_title_1=\\\"Muzzilla-streaming-API-services-for-Python\\\" journeys_date_2=\\\"30 Jun\\\" journeys_title_2=\\\"ChatHub-Chat-application-VueJs-Mongodb\\\" journeys_date_3=\\\"26 May\\\" journeys_title_3=\\\"DineEasy-coffee-tea-reservation-system\\\" journeys_date_4=\\\"17 Apr\\\" journeys_title_4=\\\"FinanceBuddy-Personal-finance-tracker\\\" journeys_date_5=\\\"05 Mar\\\" journeys_title_5=\\\"TuneStream-Music-streaming-service-API\\\" contacts_quantity=\\\"3\\\" contacts_label_1=\\\"skype\\\" contacts_content_1=\\\"james.doe\\\" contacts_url_1=\\\"skype:james.doe?chat\\\" contacts_icon_1=\\\"ti ti-brand-skype\\\" contacts_label_2=\\\"email\\\" contacts_content_2=\\\"contact@botble.com\\\" contacts_url_2=\\\"mailto:contact@botble.com\\\" contacts_icon_2=\\\"ti ti-mail\\\" contacts_label_3=\\\"phone\\\" contacts_content_3=\\\"+1-234-567-8901\\\" contacts_url_3=\\\"tel:+1-234-567-8901\\\" contacts_icon_3=\\\"ti ti-phone\\\" enable_lazy_loading=\\\"yes\\\"][\\/corporation]<\\/shortcode><shortcode>[services style=\\\"2\\\" title=\\\"Designing solutions &lt;span class=\'text-300\'&gt;customized&lt;br&gt;to meet your requirements&lt;\\/span&gt;\\\" subtitle=\\\"Cooperation\\\" service_ids=\\\"1,6,3,5,4,2\\\" bottom_text=\\\"Excited to take on &lt;span class=\'text-dark\'&gt;new projects&lt;\\/span&gt; and collaborate. &lt;br&gt;Let\\\\\'s chat about your ideas. &lt;a href=\'\' class=\'text-primary-2\'&gt;Reach out!&lt;\\/a&gt;\\\" enable_lazy_loading=\\\"yes\\\"][\\/services]<\\/shortcode><shortcode>[experience title=\\\"+12 &lt;span&gt;years of&lt;\\/span&gt; passion &lt;span&gt;for &lt;br \\/&gt; programming techniques&lt;\\/span&gt;\\\" subtitle=\\\"Experience\\\" role_title=\\\"Senior Software Engineer\\\" role_description=\\\"Led development of scalable web applications, &lt;span&gt;improving performance&lt;\\/span&gt; and user experience for millions of users. \\\\n Implemented machine learning algorithms to enhance search functionality. \\\\n Collaborated with cross-functional teams to integrate new features seamlessly.\\\" experiences_quantity=\\\"4\\\" experiences_date_1=\\\"2018 - Present\\\" experiences_title_1=\\\"Google\\\" experiences_logo_1=\\\"code\\/experiences\\/google.png\\\" experiences_date_2=\\\"2012 - 2015\\\" experiences_title_2=\\\"Twitter (X)\\\" experiences_logo_2=\\\"code\\/experiences\\/x.png\\\" experiences_date_3=\\\"2018 - Present\\\" experiences_title_3=\\\"Amazon\\\" experiences_logo_3=\\\"code\\/experiences\\/amazon.png\\\" experiences_date_4=\\\"2010 - 2012\\\" experiences_title_4=\\\"Paypal\\\" experiences_logo_4=\\\"code\\/experiences\\/paypal.png\\\" skills_quantity=\\\"5\\\" skills_name_1=\\\"Python\\\" skills_name_2=\\\"TensorFlow\\\" skills_name_3=\\\"Angular\\\" skills_name_4=\\\"Kubernetes\\\" skills_name_5=\\\"GCP\\\" background_image=\\\"code\\/general\\/services-bg.png\\\" enable_lazy_loading=\\\"yes\\\"][\\/experience]<\\/shortcode><shortcode>[resume style=\\\"2\\\" resume_1_title=\\\"Education\\\" resume_1_title_icon=\\\"ti ti-school\\\" resume_1_quantity=\\\"4\\\" resume_1_time_1=\\\"2018 - 2019\\\" resume_1_title_1=\\\"Certification in UX Design\\\" resume_1_subtitle_1=\\\"University of Stanford\\\" resume_1_time_2=\\\"2017 - 2018\\\" resume_1_title_2=\\\"Certification in Web Dev\\\" resume_1_subtitle_2=\\\"University of Stanford\\\" resume_1_time_3=\\\"2014 - 2016\\\" resume_1_title_3=\\\"Advanced UX\\/UI Bootcamp\\\" resume_1_subtitle_3=\\\"Design Academy\\\" resume_1_time_4=\\\"2012 - 2013\\\" resume_1_title_4=\\\"Certification in Graphic Design\\\" resume_1_subtitle_4=\\\"Coursera\\\" resume_2_title=\\\"Experience\\\" resume_2_title_icon=\\\"ti ti-stars\\\" resume_2_quantity=\\\"4\\\" resume_2_time_1=\\\"2019 - Present\\\" resume_2_title_1=\\\"Senior UI\\/UX Designer\\\" resume_2_subtitle_1=\\\"Leader in Creative team\\\" resume_2_time_2=\\\"2016 - 2019\\\" resume_2_title_2=\\\"UI\\/UX Designer\\\" resume_2_subtitle_2=\\\"Tech Startup\\\" resume_2_time_3=\\\"2014 - 2016\\\" resume_2_title_3=\\\"Freelance UI\\/UX Designer\\\" resume_2_subtitle_3=\\\"Self-Employed\\\" resume_2_time_4=\\\"2012 - 2014\\\" resume_2_title_4=\\\"Junior UI Designer\\\" resume_2_subtitle_4=\\\"Web Solutions team\\\" enable_lazy_loading=\\\"yes\\\"][\\/resume]<\\/shortcode><shortcode>[projects style=\\\"2\\\" title=\\\"My Recent Works\\\" subtitle=\\\"Projects\\\" project_ids=\\\"1,2,3,4\\\" background_image=\\\"code\\/general\\/projects-bg.png\\\" enable_lazy_loading=\\\"yes\\\"][\\/projects]<\\/shortcode><shortcode>[skills style=\\\"2\\\" title=\\\"My Skills\\\" subtitle=\\\"Projects\\\" quantity=\\\"9\\\" name_1=\\\"Next.js\\\" image_1=\\\"code\\/skills\\/1.png\\\" name_2=\\\"Firebase\\\" image_2=\\\"code\\/skills\\/2.png\\\" name_3=\\\"MongoDB\\\" image_3=\\\"code\\/skills\\/3.png\\\" name_4=\\\"Node.js\\\" image_4=\\\"code\\/skills\\/4.png\\\" name_5=\\\"Tailwind CSS\\\" image_5=\\\"code\\/skills\\/5.png\\\" name_6=\\\"React\\\" image_6=\\\"code\\/skills\\/6.png\\\" name_7=\\\"Vue.js\\\" image_7=\\\"code\\/skills\\/7.png\\\" name_8=\\\"Angular\\\" image_8=\\\"code\\/skills\\/8.png\\\" name_9=\\\"Laravel\\\" image_9=\\\"code\\/skills\\/9.png\\\" list_quantity=\\\"5\\\" list_label_1=\\\"Front-End\\\" list_content_1=\\\"HTML, CSS, JavaScript, React, Angular\\\" list_label_2=\\\"Back-End\\\" list_content_2=\\\"Node.js, Express, Python, Django\\\" list_label_3=\\\"Databases\\\" list_content_3=\\\"MySQL, PostgreSQL, MongoDB\\\" list_label_4=\\\"Tools &amp; Platforms\\\" list_content_4=\\\"Git, Docker, AWS, Heroku\\\" list_label_5=\\\"Others\\\" list_content_5=\\\"RESTful APIs, GraphQL, Agile Methodologies\\\" enable_lazy_loading=\\\"yes\\\"][\\/skills]<\\/shortcode><shortcode>[blog-posts style=\\\"2\\\" paginate=\\\"3\\\" title=\\\"Recent blog\\\" subtitle=\\\"Latest Posts\\\" enable_lazy_loading=\\\"yes\\\"][\\/blog-posts]<\\/shortcode><shortcode>[contact-form style=\\\"2\\\" display_fields=\\\"phone,email,subject,address\\\" mandatory_fields=\\\"email,subject\\\" title=\\\"Let\'s connect\\\" quantity=\\\"4\\\" label_1=\\\"Phone\\\" content_1=\\\"+1-234-567-8901\\\" icon_1=\\\"ti ti-phone\\\" url_1=\\\"tel:+1-234-567-8901\\\" label_2=\\\"Email\\\" content_2=\\\"contact@botble.com\\\" icon_2=\\\"ti ti-mail\\\" url_2=\\\"mailto:contact@botble.com\\\" label_3=\\\"X (Twitter)\\\" content_3=\\\"Botble Technologies\\\" icon_3=\\\"ti ti-user\\\" url_3=\\\"https:\\/\\/x.com\\/botble\\\" label_4=\\\"Address\\\" content_4=\\\"0811 Erdman Prairie, Joaville CA\\\" icon_4=\\\"ti ti-map\\\" url_4=\\\"https:\\/\\/google.com\\/maps\\\"][\\/contact-form]<\\/shortcode>\",\"submitter\":\"apply\",\"status\":\"published\",\"template\":\"default\",\"image\":\"257611305-391568315912249-333814.png\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'Home', 'primary', '2024-12-17 09:20:17', '2024-12-17 09:20:17'),
(20, 1, 'page', '{\"name\":\"Home\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"slug\":\"http:\\/\\/127.0.0.1:8000\",\"description\":null,\"content\":\"<shortcode>[hero-banner style=\\\"2\\\" title=\\\"Senior &lt;span&gt;{Full Stack}&lt;\\/span&gt;Web &amp; App developer\\\" subtitle=\\\"Hey,I\'m Rahman Tutul\\\" description=\\\"With expertise in cutting-edge technologies such as &lt;span&gt;PHP&lt;\\/span&gt;, &lt;span&gt;ReactJs&lt;\\/span&gt;, &lt;span&gt;MySql&lt;\\/span&gt;, and &lt;span&gt;Laravel&lt;\\/span&gt;... I deliver web solutions that are both innovative and robust.\\\" primary_button_text=\\\"Download My CV\\\" primary_button_link=\\\"\\/storage\\/main\\/resume\\/cv.pdf\\\" primary_button_icon=\\\"ti ti-download\\\" below_button_text=\\\"...and more\\\" quantity=\\\"5\\\" name_1=\\\"PHP\\\" image_1=\\\"11-118738-php-logo-png-circle-transparent-png.png\\\" name_2=\\\"JavaScript\\\" image_2=\\\"4.png\\\" name_3=\\\"MySql\\\" image_3=\\\"pngtree-mysql-database-service-code-coding-png-image-5289143.png\\\" name_4=\\\"ReactJs\\\" image_4=\\\"react-icon-512x512-u6e60ayf.png\\\" name_5=\\\"Tailwind CSS\\\" image_5=\\\"5.png\\\" background_image=\\\"code\\/general\\/hero-bg.png\\\" background_image_dark=\\\"code\\/general\\/hero-bg-dark.png\\\" right_image=\\\"people.png\\\" right_image_shape=\\\"code\\/general\\/people-shape.png\\\" enable_lazy_loading=\\\"no\\\"][\\/hero-banner]<\\/shortcode><shortcode>[stats-counter style=\\\"2\\\" quantity=\\\"3\\\" label_1=\\\"Years Experience\\\" count_1=\\\"2+\\\" icon_1=\\\"ti ti-crown\\\" label_2=\\\"Projects Completed\\\" count_2=\\\"15+\\\" icon_2=\\\"ti ti-device-desktop\\\" label_3=\\\"On going\\\" count_3=\\\"2\\\" icon_3=\\\"ti ti-heart-spark\\\" label_4=\\\"Awards Winner\\\" count_4=\\\"18\\\" icon_4=\\\"ti ti-award\\\" background_image=\\\"code\\/general\\/static-bg.png\\\" enable_lazy_loading=\\\"no\\\"][\\/stats-counter]<\\/shortcode><shortcode>[corporation title=\\\"More than +168 &lt;span&gt;companies &lt;br \\/&gt;&lt;\\/span&gt; trusted &lt;span&gt;worldwide_&lt;\\/span&gt;\\\" subtitle=\\\"Cooperation\\\" companies_quantity=\\\"9\\\" companies_name_1=\\\"bravado\\\" companies_image_1=\\\"code\\/companies\\/bravado.png\\\" companies_name_2=\\\"gocardless\\\" companies_image_2=\\\"code\\/companies\\/gocardless.png\\\" companies_name_3=\\\"google\\\" companies_image_3=\\\"code\\/companies\\/google.png\\\" companies_name_4=\\\"intercom\\\" companies_image_4=\\\"code\\/companies\\/intercom.png\\\" companies_name_5=\\\"monzo\\\" companies_image_5=\\\"code\\/companies\\/monzo.png\\\" companies_name_6=\\\"samsung\\\" companies_image_6=\\\"code\\/companies\\/samsung.png\\\" companies_name_7=\\\"spotify\\\" companies_image_7=\\\"code\\/companies\\/spotify.png\\\" companies_name_8=\\\"stripe\\\" companies_image_8=\\\"code\\/companies\\/stripe.png\\\" companies_name_9=\\\"visa\\\" companies_image_9=\\\"code\\/companies\\/visa.png\\\" contact_avatar=\\\"code\\/general\\/corporation-avatar.png\\\" journey_title=\\\"Git Journaling\\\" journeys_quantity=\\\"5\\\" journeys_date_1=\\\"15 Jul\\\" journeys_title_1=\\\"Muzzilla-streaming-API-services-for-Python\\\" journeys_date_2=\\\"30 Jun\\\" journeys_title_2=\\\"ChatHub-Chat-application-VueJs-Mongodb\\\" journeys_date_3=\\\"26 May\\\" journeys_title_3=\\\"DineEasy-coffee-tea-reservation-system\\\" journeys_date_4=\\\"17 Apr\\\" journeys_title_4=\\\"FinanceBuddy-Personal-finance-tracker\\\" journeys_date_5=\\\"05 Mar\\\" journeys_title_5=\\\"TuneStream-Music-streaming-service-API\\\" contacts_quantity=\\\"3\\\" contacts_label_1=\\\"skype\\\" contacts_content_1=\\\"james.doe\\\" contacts_url_1=\\\"skype:james.doe?chat\\\" contacts_icon_1=\\\"ti ti-brand-skype\\\" contacts_label_2=\\\"email\\\" contacts_content_2=\\\"contact@botble.com\\\" contacts_url_2=\\\"mailto:contact@botble.com\\\" contacts_icon_2=\\\"ti ti-mail\\\" contacts_label_3=\\\"phone\\\" contacts_content_3=\\\"+1-234-567-8901\\\" contacts_url_3=\\\"tel:+1-234-567-8901\\\" contacts_icon_3=\\\"ti ti-phone\\\" enable_lazy_loading=\\\"yes\\\"][\\/corporation]<\\/shortcode><shortcode>[services style=\\\"2\\\" title=\\\"Designing solutions &lt;span class=\'text-300\'&gt;customized&lt;br&gt;to meet your requirements&lt;\\/span&gt;\\\" subtitle=\\\"Cooperation\\\" service_ids=\\\"1,6,3,5,4,2\\\" bottom_text=\\\"Excited to take on &lt;span class=\'text-dark\'&gt;new projects&lt;\\/span&gt; and collaborate. &lt;br&gt;Let\\\\\'s chat about your ideas. &lt;a href=\'\' class=\'text-primary-2\'&gt;Reach out!&lt;\\/a&gt;\\\" enable_lazy_loading=\\\"yes\\\"][\\/services]<\\/shortcode><shortcode>[experience title=\\\"+12 &lt;span&gt;years of&lt;\\/span&gt; passion &lt;span&gt;for &lt;br \\/&gt; programming techniques&lt;\\/span&gt;\\\" subtitle=\\\"Experience\\\" role_title=\\\"Senior Software Engineer\\\" role_description=\\\"Led development of scalable web applications, &lt;span&gt;improving performance&lt;\\/span&gt; and user experience for millions of users. \\\\n Implemented machine learning algorithms to enhance search functionality. \\\\n Collaborated with cross-functional teams to integrate new features seamlessly.\\\" experiences_quantity=\\\"4\\\" experiences_date_1=\\\"2018 - Present\\\" experiences_title_1=\\\"Google\\\" experiences_logo_1=\\\"code\\/experiences\\/google.png\\\" experiences_date_2=\\\"2012 - 2015\\\" experiences_title_2=\\\"Twitter (X)\\\" experiences_logo_2=\\\"code\\/experiences\\/x.png\\\" experiences_date_3=\\\"2018 - Present\\\" experiences_title_3=\\\"Amazon\\\" experiences_logo_3=\\\"code\\/experiences\\/amazon.png\\\" experiences_date_4=\\\"2010 - 2012\\\" experiences_title_4=\\\"Paypal\\\" experiences_logo_4=\\\"code\\/experiences\\/paypal.png\\\" skills_quantity=\\\"5\\\" skills_name_1=\\\"Python\\\" skills_name_2=\\\"TensorFlow\\\" skills_name_3=\\\"Angular\\\" skills_name_4=\\\"Kubernetes\\\" skills_name_5=\\\"GCP\\\" background_image=\\\"code\\/general\\/services-bg.png\\\" enable_lazy_loading=\\\"yes\\\"][\\/experience]<\\/shortcode><shortcode>[resume style=\\\"2\\\" resume_1_title=\\\"Education\\\" resume_1_title_icon=\\\"ti ti-school\\\" resume_1_quantity=\\\"4\\\" resume_1_time_1=\\\"2018 - 2019\\\" resume_1_title_1=\\\"Certification in UX Design\\\" resume_1_subtitle_1=\\\"University of Stanford\\\" resume_1_time_2=\\\"2017 - 2018\\\" resume_1_title_2=\\\"Certification in Web Dev\\\" resume_1_subtitle_2=\\\"University of Stanford\\\" resume_1_time_3=\\\"2014 - 2016\\\" resume_1_title_3=\\\"Advanced UX\\/UI Bootcamp\\\" resume_1_subtitle_3=\\\"Design Academy\\\" resume_1_time_4=\\\"2012 - 2013\\\" resume_1_title_4=\\\"Certification in Graphic Design\\\" resume_1_subtitle_4=\\\"Coursera\\\" resume_2_title=\\\"Experience\\\" resume_2_title_icon=\\\"ti ti-stars\\\" resume_2_quantity=\\\"4\\\" resume_2_time_1=\\\"2019 - Present\\\" resume_2_title_1=\\\"Senior UI\\/UX Designer\\\" resume_2_subtitle_1=\\\"Leader in Creative team\\\" resume_2_time_2=\\\"2016 - 2019\\\" resume_2_title_2=\\\"UI\\/UX Designer\\\" resume_2_subtitle_2=\\\"Tech Startup\\\" resume_2_time_3=\\\"2014 - 2016\\\" resume_2_title_3=\\\"Freelance UI\\/UX Designer\\\" resume_2_subtitle_3=\\\"Self-Employed\\\" resume_2_time_4=\\\"2012 - 2014\\\" resume_2_title_4=\\\"Junior UI Designer\\\" resume_2_subtitle_4=\\\"Web Solutions team\\\" enable_lazy_loading=\\\"yes\\\"][\\/resume]<\\/shortcode><shortcode>[projects style=\\\"2\\\" title=\\\"My Recent Works\\\" subtitle=\\\"Projects\\\" project_ids=\\\"1,2,3,4\\\" background_image=\\\"code\\/general\\/projects-bg.png\\\" enable_lazy_loading=\\\"yes\\\"][\\/projects]<\\/shortcode><shortcode>[skills style=\\\"2\\\" title=\\\"My Skills\\\" subtitle=\\\"Projects\\\" quantity=\\\"9\\\" name_1=\\\"Next.js\\\" image_1=\\\"code\\/skills\\/1.png\\\" name_2=\\\"Firebase\\\" image_2=\\\"code\\/skills\\/2.png\\\" name_3=\\\"MongoDB\\\" image_3=\\\"code\\/skills\\/3.png\\\" name_4=\\\"Node.js\\\" image_4=\\\"code\\/skills\\/4.png\\\" name_5=\\\"Tailwind CSS\\\" image_5=\\\"code\\/skills\\/5.png\\\" name_6=\\\"React\\\" image_6=\\\"code\\/skills\\/6.png\\\" name_7=\\\"Vue.js\\\" image_7=\\\"code\\/skills\\/7.png\\\" name_8=\\\"Angular\\\" image_8=\\\"code\\/skills\\/8.png\\\" name_9=\\\"Laravel\\\" image_9=\\\"code\\/skills\\/9.png\\\" list_quantity=\\\"5\\\" list_label_1=\\\"Front-End\\\" list_content_1=\\\"HTML, CSS, JavaScript, React, Angular\\\" list_label_2=\\\"Back-End\\\" list_content_2=\\\"Node.js, Express, Python, Django\\\" list_label_3=\\\"Databases\\\" list_content_3=\\\"MySQL, PostgreSQL, MongoDB\\\" list_label_4=\\\"Tools &amp; Platforms\\\" list_content_4=\\\"Git, Docker, AWS, Heroku\\\" list_label_5=\\\"Others\\\" list_content_5=\\\"RESTful APIs, GraphQL, Agile Methodologies\\\" enable_lazy_loading=\\\"yes\\\"][\\/skills]<\\/shortcode><shortcode>[blog-posts style=\\\"2\\\" paginate=\\\"3\\\" title=\\\"Recent blog\\\" subtitle=\\\"Latest Posts\\\" enable_lazy_loading=\\\"yes\\\"][\\/blog-posts]<\\/shortcode><shortcode>[contact-form style=\\\"2\\\" display_fields=\\\"phone,email,subject,address\\\" mandatory_fields=\\\"email,subject\\\" title=\\\"Let\'s connect\\\" quantity=\\\"4\\\" label_1=\\\"Phone\\\" content_1=\\\"+1-234-567-8901\\\" icon_1=\\\"ti ti-phone\\\" url_1=\\\"tel:+1-234-567-8901\\\" label_2=\\\"Email\\\" content_2=\\\"contact@botble.com\\\" icon_2=\\\"ti ti-mail\\\" url_2=\\\"mailto:contact@botble.com\\\" label_3=\\\"X (Twitter)\\\" content_3=\\\"Botble Technologies\\\" icon_3=\\\"ti ti-user\\\" url_3=\\\"https:\\/\\/x.com\\/botble\\\" label_4=\\\"Address\\\" content_4=\\\"0811 Erdman Prairie, Joaville CA\\\" icon_4=\\\"ti ti-map\\\" url_4=\\\"https:\\/\\/google.com\\/maps\\\"][\\/contact-form]<\\/shortcode>\",\"submitter\":\"apply\",\"status\":\"published\",\"template\":\"default\",\"image\":\"257611305-391568315912249-333814.png\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'Home', 'primary', '2024-12-17 09:24:02', '2024-12-17 09:24:02');
INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(21, 1, 'page', '{\"name\":\"Home\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"slug\":\"http:\\/\\/127.0.0.1:8000\",\"description\":null,\"content\":\"<shortcode>[hero-banner style=\\\"2\\\" title=\\\"Senior &lt;span&gt;{Full Stack}&lt;\\/span&gt;Web &amp; App developer\\\" subtitle=\\\"Hey,I\'m Rahman Tutul\\\" description=\\\"With expertise in cutting-edge technologies such as &lt;span&gt;PHP&lt;\\/span&gt;, &lt;span&gt;ReactJs&lt;\\/span&gt;, &lt;span&gt;MySql&lt;\\/span&gt;, and &lt;span&gt;Laravel&lt;\\/span&gt;... I deliver web solutions that are both innovative and robust.\\\" primary_button_text=\\\"Download My CV\\\" primary_button_link=\\\"\\/storage\\/main\\/resume\\/cv.pdf\\\" primary_button_icon=\\\"ti ti-download\\\" below_button_text=\\\"...and more\\\" quantity=\\\"5\\\" name_1=\\\"PHP\\\" image_1=\\\"11-118738-php-logo-png-circle-transparent-png.png\\\" name_2=\\\"JavaScript\\\" image_2=\\\"4.png\\\" name_3=\\\"MySql\\\" image_3=\\\"pngtree-mysql-database-service-code-coding-png-image-5289143.png\\\" name_4=\\\"ReactJs\\\" image_4=\\\"react-icon-512x512-u6e60ayf.png\\\" name_5=\\\"Tailwind CSS\\\" image_5=\\\"5.png\\\" background_image=\\\"code\\/general\\/hero-bg.png\\\" background_image_dark=\\\"code\\/general\\/hero-bg-dark.png\\\" right_image=\\\"people.png\\\" right_image_shape=\\\"code\\/general\\/people-shape.png\\\" enable_lazy_loading=\\\"no\\\"][\\/hero-banner]<\\/shortcode><shortcode>[stats-counter style=\\\"2\\\" quantity=\\\"4\\\" label_1=\\\"Years Experience\\\" count_1=\\\"2\\\" icon_1=\\\"ti ti-crown\\\" label_2=\\\"Projects Completed\\\" count_2=\\\"15\\\" icon_2=\\\"ti ti-device-desktop\\\" label_3=\\\"On going\\\" count_3=\\\"2\\\" icon_3=\\\"ti ti-heart-spark\\\" label_4=\\\"Awards Winner\\\" highlight_text_4=\\\"Technologies\\\" count_4=\\\"6\\\" icon_4=\\\"ti ti-award\\\" background_image=\\\"code\\/general\\/static-bg.png\\\" enable_lazy_loading=\\\"no\\\"][\\/stats-counter]<\\/shortcode><shortcode>[corporation title=\\\"More than +168 &lt;span&gt;companies &lt;br \\/&gt;&lt;\\/span&gt; trusted &lt;span&gt;worldwide_&lt;\\/span&gt;\\\" subtitle=\\\"Cooperation\\\" companies_quantity=\\\"9\\\" companies_name_1=\\\"bravado\\\" companies_image_1=\\\"code\\/companies\\/bravado.png\\\" companies_name_2=\\\"gocardless\\\" companies_image_2=\\\"code\\/companies\\/gocardless.png\\\" companies_name_3=\\\"google\\\" companies_image_3=\\\"code\\/companies\\/google.png\\\" companies_name_4=\\\"intercom\\\" companies_image_4=\\\"code\\/companies\\/intercom.png\\\" companies_name_5=\\\"monzo\\\" companies_image_5=\\\"code\\/companies\\/monzo.png\\\" companies_name_6=\\\"samsung\\\" companies_image_6=\\\"code\\/companies\\/samsung.png\\\" companies_name_7=\\\"spotify\\\" companies_image_7=\\\"code\\/companies\\/spotify.png\\\" companies_name_8=\\\"stripe\\\" companies_image_8=\\\"code\\/companies\\/stripe.png\\\" companies_name_9=\\\"visa\\\" companies_image_9=\\\"code\\/companies\\/visa.png\\\" contact_avatar=\\\"code\\/general\\/corporation-avatar.png\\\" journey_title=\\\"Git Journaling\\\" journeys_quantity=\\\"5\\\" journeys_date_1=\\\"15 Jul\\\" journeys_title_1=\\\"Muzzilla-streaming-API-services-for-Python\\\" journeys_date_2=\\\"30 Jun\\\" journeys_title_2=\\\"ChatHub-Chat-application-VueJs-Mongodb\\\" journeys_date_3=\\\"26 May\\\" journeys_title_3=\\\"DineEasy-coffee-tea-reservation-system\\\" journeys_date_4=\\\"17 Apr\\\" journeys_title_4=\\\"FinanceBuddy-Personal-finance-tracker\\\" journeys_date_5=\\\"05 Mar\\\" journeys_title_5=\\\"TuneStream-Music-streaming-service-API\\\" contacts_quantity=\\\"3\\\" contacts_label_1=\\\"skype\\\" contacts_content_1=\\\"james.doe\\\" contacts_url_1=\\\"skype:james.doe?chat\\\" contacts_icon_1=\\\"ti ti-brand-skype\\\" contacts_label_2=\\\"email\\\" contacts_content_2=\\\"contact@botble.com\\\" contacts_url_2=\\\"mailto:contact@botble.com\\\" contacts_icon_2=\\\"ti ti-mail\\\" contacts_label_3=\\\"phone\\\" contacts_content_3=\\\"+1-234-567-8901\\\" contacts_url_3=\\\"tel:+1-234-567-8901\\\" contacts_icon_3=\\\"ti ti-phone\\\" enable_lazy_loading=\\\"yes\\\"][\\/corporation]<\\/shortcode><shortcode>[services style=\\\"2\\\" title=\\\"Designing solutions &lt;span class=\'text-300\'&gt;customized&lt;br&gt;to meet your requirements&lt;\\/span&gt;\\\" subtitle=\\\"Cooperation\\\" service_ids=\\\"1,6,3,5,4,2\\\" bottom_text=\\\"Excited to take on &lt;span class=\'text-dark\'&gt;new projects&lt;\\/span&gt; and collaborate. &lt;br&gt;Let\\\\\'s chat about your ideas. &lt;a href=\'\' class=\'text-primary-2\'&gt;Reach out!&lt;\\/a&gt;\\\" enable_lazy_loading=\\\"yes\\\"][\\/services]<\\/shortcode><shortcode>[experience title=\\\"+12 &lt;span&gt;years of&lt;\\/span&gt; passion &lt;span&gt;for &lt;br \\/&gt; programming techniques&lt;\\/span&gt;\\\" subtitle=\\\"Experience\\\" role_title=\\\"Senior Software Engineer\\\" role_description=\\\"Led development of scalable web applications, &lt;span&gt;improving performance&lt;\\/span&gt; and user experience for millions of users. \\\\n Implemented machine learning algorithms to enhance search functionality. \\\\n Collaborated with cross-functional teams to integrate new features seamlessly.\\\" experiences_quantity=\\\"4\\\" experiences_date_1=\\\"2018 - Present\\\" experiences_title_1=\\\"Google\\\" experiences_logo_1=\\\"code\\/experiences\\/google.png\\\" experiences_date_2=\\\"2012 - 2015\\\" experiences_title_2=\\\"Twitter (X)\\\" experiences_logo_2=\\\"code\\/experiences\\/x.png\\\" experiences_date_3=\\\"2018 - Present\\\" experiences_title_3=\\\"Amazon\\\" experiences_logo_3=\\\"code\\/experiences\\/amazon.png\\\" experiences_date_4=\\\"2010 - 2012\\\" experiences_title_4=\\\"Paypal\\\" experiences_logo_4=\\\"code\\/experiences\\/paypal.png\\\" skills_quantity=\\\"5\\\" skills_name_1=\\\"Python\\\" skills_name_2=\\\"TensorFlow\\\" skills_name_3=\\\"Angular\\\" skills_name_4=\\\"Kubernetes\\\" skills_name_5=\\\"GCP\\\" background_image=\\\"code\\/general\\/services-bg.png\\\" enable_lazy_loading=\\\"yes\\\"][\\/experience]<\\/shortcode><shortcode>[resume style=\\\"2\\\" resume_1_title=\\\"Education\\\" resume_1_title_icon=\\\"ti ti-school\\\" resume_1_quantity=\\\"4\\\" resume_1_time_1=\\\"2018 - 2019\\\" resume_1_title_1=\\\"Certification in UX Design\\\" resume_1_subtitle_1=\\\"University of Stanford\\\" resume_1_time_2=\\\"2017 - 2018\\\" resume_1_title_2=\\\"Certification in Web Dev\\\" resume_1_subtitle_2=\\\"University of Stanford\\\" resume_1_time_3=\\\"2014 - 2016\\\" resume_1_title_3=\\\"Advanced UX\\/UI Bootcamp\\\" resume_1_subtitle_3=\\\"Design Academy\\\" resume_1_time_4=\\\"2012 - 2013\\\" resume_1_title_4=\\\"Certification in Graphic Design\\\" resume_1_subtitle_4=\\\"Coursera\\\" resume_2_title=\\\"Experience\\\" resume_2_title_icon=\\\"ti ti-stars\\\" resume_2_quantity=\\\"4\\\" resume_2_time_1=\\\"2019 - Present\\\" resume_2_title_1=\\\"Senior UI\\/UX Designer\\\" resume_2_subtitle_1=\\\"Leader in Creative team\\\" resume_2_time_2=\\\"2016 - 2019\\\" resume_2_title_2=\\\"UI\\/UX Designer\\\" resume_2_subtitle_2=\\\"Tech Startup\\\" resume_2_time_3=\\\"2014 - 2016\\\" resume_2_title_3=\\\"Freelance UI\\/UX Designer\\\" resume_2_subtitle_3=\\\"Self-Employed\\\" resume_2_time_4=\\\"2012 - 2014\\\" resume_2_title_4=\\\"Junior UI Designer\\\" resume_2_subtitle_4=\\\"Web Solutions team\\\" enable_lazy_loading=\\\"yes\\\"][\\/resume]<\\/shortcode><shortcode>[projects style=\\\"2\\\" title=\\\"My Recent Works\\\" subtitle=\\\"Projects\\\" project_ids=\\\"1,2,3,4\\\" background_image=\\\"code\\/general\\/projects-bg.png\\\" enable_lazy_loading=\\\"yes\\\"][\\/projects]<\\/shortcode><shortcode>[skills style=\\\"2\\\" title=\\\"My Skills\\\" subtitle=\\\"Projects\\\" quantity=\\\"9\\\" name_1=\\\"Next.js\\\" image_1=\\\"code\\/skills\\/1.png\\\" name_2=\\\"Firebase\\\" image_2=\\\"code\\/skills\\/2.png\\\" name_3=\\\"MongoDB\\\" image_3=\\\"code\\/skills\\/3.png\\\" name_4=\\\"Node.js\\\" image_4=\\\"code\\/skills\\/4.png\\\" name_5=\\\"Tailwind CSS\\\" image_5=\\\"code\\/skills\\/5.png\\\" name_6=\\\"React\\\" image_6=\\\"code\\/skills\\/6.png\\\" name_7=\\\"Vue.js\\\" image_7=\\\"code\\/skills\\/7.png\\\" name_8=\\\"Angular\\\" image_8=\\\"code\\/skills\\/8.png\\\" name_9=\\\"Laravel\\\" image_9=\\\"code\\/skills\\/9.png\\\" list_quantity=\\\"5\\\" list_label_1=\\\"Front-End\\\" list_content_1=\\\"HTML, CSS, JavaScript, React, Angular\\\" list_label_2=\\\"Back-End\\\" list_content_2=\\\"Node.js, Express, Python, Django\\\" list_label_3=\\\"Databases\\\" list_content_3=\\\"MySQL, PostgreSQL, MongoDB\\\" list_label_4=\\\"Tools &amp; Platforms\\\" list_content_4=\\\"Git, Docker, AWS, Heroku\\\" list_label_5=\\\"Others\\\" list_content_5=\\\"RESTful APIs, GraphQL, Agile Methodologies\\\" enable_lazy_loading=\\\"yes\\\"][\\/skills]<\\/shortcode><shortcode>[blog-posts style=\\\"2\\\" paginate=\\\"3\\\" title=\\\"Recent blog\\\" subtitle=\\\"Latest Posts\\\" enable_lazy_loading=\\\"yes\\\"][\\/blog-posts]<\\/shortcode><shortcode>[contact-form style=\\\"2\\\" display_fields=\\\"phone,email,subject,address\\\" mandatory_fields=\\\"email,subject\\\" title=\\\"Let\'s connect\\\" quantity=\\\"4\\\" label_1=\\\"Phone\\\" content_1=\\\"+1-234-567-8901\\\" icon_1=\\\"ti ti-phone\\\" url_1=\\\"tel:+1-234-567-8901\\\" label_2=\\\"Email\\\" content_2=\\\"contact@botble.com\\\" icon_2=\\\"ti ti-mail\\\" url_2=\\\"mailto:contact@botble.com\\\" label_3=\\\"X (Twitter)\\\" content_3=\\\"Botble Technologies\\\" icon_3=\\\"ti ti-user\\\" url_3=\\\"https:\\/\\/x.com\\/botble\\\" label_4=\\\"Address\\\" content_4=\\\"0811 Erdman Prairie, Joaville CA\\\" icon_4=\\\"ti ti-map\\\" url_4=\\\"https:\\/\\/google.com\\/maps\\\"][\\/contact-form]<\\/shortcode>\",\"submitter\":\"apply\",\"status\":\"published\",\"template\":\"default\",\"image\":\"257611305-391568315912249-333814.png\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'Home', 'primary', '2024-12-17 09:25:29', '2024-12-17 09:25:29'),
(22, 1, 'page', '{\"name\":\"Home\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"slug\":\"http:\\/\\/127.0.0.1:8000\",\"description\":null,\"content\":\"<shortcode>[hero-banner style=\\\"2\\\" title=\\\"Senior &lt;span&gt;{Full Stack}&lt;\\/span&gt;Web &amp; App developer\\\" subtitle=\\\"Hey,I\'m Rahman Tutul\\\" description=\\\"With expertise in cutting-edge technologies such as &lt;span&gt;PHP&lt;\\/span&gt;, &lt;span&gt;ReactJs&lt;\\/span&gt;, &lt;span&gt;MySql&lt;\\/span&gt;, and &lt;span&gt;Laravel&lt;\\/span&gt;... I deliver web solutions that are both innovative and robust.\\\" primary_button_text=\\\"Download My CV\\\" primary_button_link=\\\"\\/storage\\/main\\/resume\\/cv.pdf\\\" primary_button_icon=\\\"ti ti-download\\\" below_button_text=\\\"...and more\\\" quantity=\\\"5\\\" name_1=\\\"PHP\\\" image_1=\\\"11-118738-php-logo-png-circle-transparent-png.png\\\" name_2=\\\"JavaScript\\\" image_2=\\\"4.png\\\" name_3=\\\"MySql\\\" image_3=\\\"pngtree-mysql-database-service-code-coding-png-image-5289143.png\\\" name_4=\\\"ReactJs\\\" image_4=\\\"react-icon-512x512-u6e60ayf.png\\\" name_5=\\\"Tailwind CSS\\\" image_5=\\\"5.png\\\" background_image=\\\"code\\/general\\/hero-bg.png\\\" background_image_dark=\\\"code\\/general\\/hero-bg-dark.png\\\" right_image=\\\"people.png\\\" right_image_shape=\\\"code\\/general\\/people-shape.png\\\" enable_lazy_loading=\\\"no\\\"][\\/hero-banner]<\\/shortcode><shortcode>[stats-counter style=\\\"2\\\" quantity=\\\"4\\\" label_1=\\\"Years Experience\\\" count_1=\\\"2\\\" icon_1=\\\"ti ti-crown\\\" label_2=\\\"Projects Completed\\\" count_2=\\\"15\\\" icon_2=\\\"ti ti-device-desktop\\\" label_3=\\\"On going\\\" count_3=\\\"2\\\" icon_3=\\\"ti ti-heart-spark\\\" label_4=\\\"Technologies\\\" count_4=\\\"6\\\" icon_4=\\\"ti ti-award\\\" background_image=\\\"code\\/general\\/static-bg.png\\\" enable_lazy_loading=\\\"no\\\"][\\/stats-counter]<\\/shortcode><shortcode>[corporation title=\\\"More than +168 &lt;span&gt;companies &lt;br \\/&gt;&lt;\\/span&gt; trusted &lt;span&gt;worldwide_&lt;\\/span&gt;\\\" subtitle=\\\"Cooperation\\\" companies_quantity=\\\"9\\\" companies_name_1=\\\"bravado\\\" companies_image_1=\\\"code\\/companies\\/bravado.png\\\" companies_name_2=\\\"gocardless\\\" companies_image_2=\\\"code\\/companies\\/gocardless.png\\\" companies_name_3=\\\"google\\\" companies_image_3=\\\"code\\/companies\\/google.png\\\" companies_name_4=\\\"intercom\\\" companies_image_4=\\\"code\\/companies\\/intercom.png\\\" companies_name_5=\\\"monzo\\\" companies_image_5=\\\"code\\/companies\\/monzo.png\\\" companies_name_6=\\\"samsung\\\" companies_image_6=\\\"code\\/companies\\/samsung.png\\\" companies_name_7=\\\"spotify\\\" companies_image_7=\\\"code\\/companies\\/spotify.png\\\" companies_name_8=\\\"stripe\\\" companies_image_8=\\\"code\\/companies\\/stripe.png\\\" companies_name_9=\\\"visa\\\" companies_image_9=\\\"code\\/companies\\/visa.png\\\" contact_avatar=\\\"code\\/general\\/corporation-avatar.png\\\" journey_title=\\\"Git Journaling\\\" journeys_quantity=\\\"5\\\" journeys_date_1=\\\"15 Jul\\\" journeys_title_1=\\\"Muzzilla-streaming-API-services-for-Python\\\" journeys_date_2=\\\"30 Jun\\\" journeys_title_2=\\\"ChatHub-Chat-application-VueJs-Mongodb\\\" journeys_date_3=\\\"26 May\\\" journeys_title_3=\\\"DineEasy-coffee-tea-reservation-system\\\" journeys_date_4=\\\"17 Apr\\\" journeys_title_4=\\\"FinanceBuddy-Personal-finance-tracker\\\" journeys_date_5=\\\"05 Mar\\\" journeys_title_5=\\\"TuneStream-Music-streaming-service-API\\\" contacts_quantity=\\\"3\\\" contacts_label_1=\\\"skype\\\" contacts_content_1=\\\"james.doe\\\" contacts_url_1=\\\"skype:james.doe?chat\\\" contacts_icon_1=\\\"ti ti-brand-skype\\\" contacts_label_2=\\\"email\\\" contacts_content_2=\\\"contact@botble.com\\\" contacts_url_2=\\\"mailto:contact@botble.com\\\" contacts_icon_2=\\\"ti ti-mail\\\" contacts_label_3=\\\"phone\\\" contacts_content_3=\\\"+1-234-567-8901\\\" contacts_url_3=\\\"tel:+1-234-567-8901\\\" contacts_icon_3=\\\"ti ti-phone\\\" enable_lazy_loading=\\\"yes\\\"][\\/corporation]<\\/shortcode><shortcode>[services style=\\\"2\\\" title=\\\"Designing solutions &lt;span class=\'text-300\'&gt;customized&lt;br&gt;to meet your requirements&lt;\\/span&gt;\\\" subtitle=\\\"Cooperation\\\" service_ids=\\\"1,6,3,5,4,2\\\" bottom_text=\\\"Excited to take on &lt;span class=\'text-dark\'&gt;new projects&lt;\\/span&gt; and collaborate. &lt;br&gt;Let\\\\\'s chat about your ideas. &lt;a href=\'\' class=\'text-primary-2\'&gt;Reach out!&lt;\\/a&gt;\\\" enable_lazy_loading=\\\"yes\\\"][\\/services]<\\/shortcode><shortcode>[experience title=\\\"+12 &lt;span&gt;years of&lt;\\/span&gt; passion &lt;span&gt;for &lt;br \\/&gt; programming techniques&lt;\\/span&gt;\\\" subtitle=\\\"Experience\\\" role_title=\\\"Senior Software Engineer\\\" role_description=\\\"Led development of scalable web applications, &lt;span&gt;improving performance&lt;\\/span&gt; and user experience for millions of users. \\\\n Implemented machine learning algorithms to enhance search functionality. \\\\n Collaborated with cross-functional teams to integrate new features seamlessly.\\\" experiences_quantity=\\\"4\\\" experiences_date_1=\\\"2018 - Present\\\" experiences_title_1=\\\"Google\\\" experiences_logo_1=\\\"code\\/experiences\\/google.png\\\" experiences_date_2=\\\"2012 - 2015\\\" experiences_title_2=\\\"Twitter (X)\\\" experiences_logo_2=\\\"code\\/experiences\\/x.png\\\" experiences_date_3=\\\"2018 - Present\\\" experiences_title_3=\\\"Amazon\\\" experiences_logo_3=\\\"code\\/experiences\\/amazon.png\\\" experiences_date_4=\\\"2010 - 2012\\\" experiences_title_4=\\\"Paypal\\\" experiences_logo_4=\\\"code\\/experiences\\/paypal.png\\\" skills_quantity=\\\"5\\\" skills_name_1=\\\"Python\\\" skills_name_2=\\\"TensorFlow\\\" skills_name_3=\\\"Angular\\\" skills_name_4=\\\"Kubernetes\\\" skills_name_5=\\\"GCP\\\" background_image=\\\"code\\/general\\/services-bg.png\\\" enable_lazy_loading=\\\"yes\\\"][\\/experience]<\\/shortcode><shortcode>[resume style=\\\"2\\\" resume_1_title=\\\"Education\\\" resume_1_title_icon=\\\"ti ti-school\\\" resume_1_quantity=\\\"4\\\" resume_1_time_1=\\\"2018 - 2019\\\" resume_1_title_1=\\\"Certification in UX Design\\\" resume_1_subtitle_1=\\\"University of Stanford\\\" resume_1_time_2=\\\"2017 - 2018\\\" resume_1_title_2=\\\"Certification in Web Dev\\\" resume_1_subtitle_2=\\\"University of Stanford\\\" resume_1_time_3=\\\"2014 - 2016\\\" resume_1_title_3=\\\"Advanced UX\\/UI Bootcamp\\\" resume_1_subtitle_3=\\\"Design Academy\\\" resume_1_time_4=\\\"2012 - 2013\\\" resume_1_title_4=\\\"Certification in Graphic Design\\\" resume_1_subtitle_4=\\\"Coursera\\\" resume_2_title=\\\"Experience\\\" resume_2_title_icon=\\\"ti ti-stars\\\" resume_2_quantity=\\\"4\\\" resume_2_time_1=\\\"2019 - Present\\\" resume_2_title_1=\\\"Senior UI\\/UX Designer\\\" resume_2_subtitle_1=\\\"Leader in Creative team\\\" resume_2_time_2=\\\"2016 - 2019\\\" resume_2_title_2=\\\"UI\\/UX Designer\\\" resume_2_subtitle_2=\\\"Tech Startup\\\" resume_2_time_3=\\\"2014 - 2016\\\" resume_2_title_3=\\\"Freelance UI\\/UX Designer\\\" resume_2_subtitle_3=\\\"Self-Employed\\\" resume_2_time_4=\\\"2012 - 2014\\\" resume_2_title_4=\\\"Junior UI Designer\\\" resume_2_subtitle_4=\\\"Web Solutions team\\\" enable_lazy_loading=\\\"yes\\\"][\\/resume]<\\/shortcode><shortcode>[projects style=\\\"2\\\" title=\\\"My Recent Works\\\" subtitle=\\\"Projects\\\" project_ids=\\\"1,2,3,4\\\" background_image=\\\"code\\/general\\/projects-bg.png\\\" enable_lazy_loading=\\\"yes\\\"][\\/projects]<\\/shortcode><shortcode>[skills style=\\\"2\\\" title=\\\"My Skills\\\" subtitle=\\\"Projects\\\" quantity=\\\"9\\\" name_1=\\\"Next.js\\\" image_1=\\\"code\\/skills\\/1.png\\\" name_2=\\\"Firebase\\\" image_2=\\\"code\\/skills\\/2.png\\\" name_3=\\\"MongoDB\\\" image_3=\\\"code\\/skills\\/3.png\\\" name_4=\\\"Node.js\\\" image_4=\\\"code\\/skills\\/4.png\\\" name_5=\\\"Tailwind CSS\\\" image_5=\\\"code\\/skills\\/5.png\\\" name_6=\\\"React\\\" image_6=\\\"code\\/skills\\/6.png\\\" name_7=\\\"Vue.js\\\" image_7=\\\"code\\/skills\\/7.png\\\" name_8=\\\"Angular\\\" image_8=\\\"code\\/skills\\/8.png\\\" name_9=\\\"Laravel\\\" image_9=\\\"code\\/skills\\/9.png\\\" list_quantity=\\\"5\\\" list_label_1=\\\"Front-End\\\" list_content_1=\\\"HTML, CSS, JavaScript, React, Angular\\\" list_label_2=\\\"Back-End\\\" list_content_2=\\\"Node.js, Express, Python, Django\\\" list_label_3=\\\"Databases\\\" list_content_3=\\\"MySQL, PostgreSQL, MongoDB\\\" list_label_4=\\\"Tools &amp; Platforms\\\" list_content_4=\\\"Git, Docker, AWS, Heroku\\\" list_label_5=\\\"Others\\\" list_content_5=\\\"RESTful APIs, GraphQL, Agile Methodologies\\\" enable_lazy_loading=\\\"yes\\\"][\\/skills]<\\/shortcode><shortcode>[blog-posts style=\\\"2\\\" paginate=\\\"3\\\" title=\\\"Recent blog\\\" subtitle=\\\"Latest Posts\\\" enable_lazy_loading=\\\"yes\\\"][\\/blog-posts]<\\/shortcode><shortcode>[contact-form style=\\\"2\\\" display_fields=\\\"phone,email,subject,address\\\" mandatory_fields=\\\"email,subject\\\" title=\\\"Let\'s connect\\\" quantity=\\\"4\\\" label_1=\\\"Phone\\\" content_1=\\\"+1-234-567-8901\\\" icon_1=\\\"ti ti-phone\\\" url_1=\\\"tel:+1-234-567-8901\\\" label_2=\\\"Email\\\" content_2=\\\"contact@botble.com\\\" icon_2=\\\"ti ti-mail\\\" url_2=\\\"mailto:contact@botble.com\\\" label_3=\\\"X (Twitter)\\\" content_3=\\\"Botble Technologies\\\" icon_3=\\\"ti ti-user\\\" url_3=\\\"https:\\/\\/x.com\\/botble\\\" label_4=\\\"Address\\\" content_4=\\\"0811 Erdman Prairie, Joaville CA\\\" icon_4=\\\"ti ti-map\\\" url_4=\\\"https:\\/\\/google.com\\/maps\\\"][\\/contact-form]<\\/shortcode>\",\"submitter\":\"apply\",\"status\":\"published\",\"template\":\"default\",\"image\":\"257611305-391568315912249-333814.png\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'Home', 'primary', '2024-12-17 09:26:03', '2024-12-17 09:26:03'),
(23, 1, 'page', '{\"name\":\"Home\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"slug\":\"http:\\/\\/127.0.0.1:8000\",\"description\":null,\"content\":\"<shortcode>[hero-banner style=\\\"2\\\" title=\\\"Senior &lt;span&gt;{Full Stack}&lt;\\/span&gt;Web &amp; App developer\\\" subtitle=\\\"Hey,I\'m Rahman Tutul\\\" description=\\\"With expertise in cutting-edge technologies such as &lt;span&gt;PHP&lt;\\/span&gt;, &lt;span&gt;ReactJs&lt;\\/span&gt;, &lt;span&gt;MySql&lt;\\/span&gt;, and &lt;span&gt;Laravel&lt;\\/span&gt;... I deliver web solutions that are both innovative and robust.\\\" primary_button_text=\\\"Download My CV\\\" primary_button_link=\\\"\\/storage\\/main\\/resume\\/cv.pdf\\\" primary_button_icon=\\\"ti ti-download\\\" below_button_text=\\\"...and more\\\" quantity=\\\"5\\\" name_1=\\\"PHP\\\" image_1=\\\"11-118738-php-logo-png-circle-transparent-png.png\\\" name_2=\\\"JavaScript\\\" image_2=\\\"4.png\\\" name_3=\\\"MySql\\\" image_3=\\\"pngtree-mysql-database-service-code-coding-png-image-5289143.png\\\" name_4=\\\"ReactJs\\\" image_4=\\\"react-icon-512x512-u6e60ayf.png\\\" name_5=\\\"Tailwind CSS\\\" image_5=\\\"5.png\\\" background_image=\\\"code\\/general\\/hero-bg.png\\\" background_image_dark=\\\"code\\/general\\/hero-bg-dark.png\\\" right_image=\\\"people.png\\\" right_image_shape=\\\"code\\/general\\/people-shape.png\\\" enable_lazy_loading=\\\"no\\\"][\\/hero-banner]<\\/shortcode><shortcode>[stats-counter style=\\\"2\\\" quantity=\\\"4\\\" label_1=\\\"Years Experience\\\" count_1=\\\"2\\\" icon_1=\\\"ti ti-crown\\\" label_2=\\\"Projects Completed\\\" count_2=\\\"15\\\" icon_2=\\\"ti ti-device-desktop\\\" label_3=\\\"On going\\\" count_3=\\\"2\\\" icon_3=\\\"ti ti-heart-spark\\\" label_4=\\\"Technologies\\\" count_4=\\\"6\\\" icon_4=\\\"ti ti-3d-rotate\\\" background_image=\\\"code\\/general\\/static-bg.png\\\" enable_lazy_loading=\\\"no\\\"][\\/stats-counter]<\\/shortcode><shortcode>[corporation title=\\\"More than +168 &lt;span&gt;companies &lt;br \\/&gt;&lt;\\/span&gt; trusted &lt;span&gt;worldwide_&lt;\\/span&gt;\\\" subtitle=\\\"Cooperation\\\" companies_quantity=\\\"9\\\" companies_name_1=\\\"bravado\\\" companies_image_1=\\\"code\\/companies\\/bravado.png\\\" companies_name_2=\\\"gocardless\\\" companies_image_2=\\\"code\\/companies\\/gocardless.png\\\" companies_name_3=\\\"google\\\" companies_image_3=\\\"code\\/companies\\/google.png\\\" companies_name_4=\\\"intercom\\\" companies_image_4=\\\"code\\/companies\\/intercom.png\\\" companies_name_5=\\\"monzo\\\" companies_image_5=\\\"code\\/companies\\/monzo.png\\\" companies_name_6=\\\"samsung\\\" companies_image_6=\\\"code\\/companies\\/samsung.png\\\" companies_name_7=\\\"spotify\\\" companies_image_7=\\\"code\\/companies\\/spotify.png\\\" companies_name_8=\\\"stripe\\\" companies_image_8=\\\"code\\/companies\\/stripe.png\\\" companies_name_9=\\\"visa\\\" companies_image_9=\\\"code\\/companies\\/visa.png\\\" contact_avatar=\\\"code\\/general\\/corporation-avatar.png\\\" journey_title=\\\"Git Journaling\\\" journeys_quantity=\\\"5\\\" journeys_date_1=\\\"15 Jul\\\" journeys_title_1=\\\"Muzzilla-streaming-API-services-for-Python\\\" journeys_date_2=\\\"30 Jun\\\" journeys_title_2=\\\"ChatHub-Chat-application-VueJs-Mongodb\\\" journeys_date_3=\\\"26 May\\\" journeys_title_3=\\\"DineEasy-coffee-tea-reservation-system\\\" journeys_date_4=\\\"17 Apr\\\" journeys_title_4=\\\"FinanceBuddy-Personal-finance-tracker\\\" journeys_date_5=\\\"05 Mar\\\" journeys_title_5=\\\"TuneStream-Music-streaming-service-API\\\" contacts_quantity=\\\"3\\\" contacts_label_1=\\\"skype\\\" contacts_content_1=\\\"james.doe\\\" contacts_url_1=\\\"skype:james.doe?chat\\\" contacts_icon_1=\\\"ti ti-brand-skype\\\" contacts_label_2=\\\"email\\\" contacts_content_2=\\\"contact@botble.com\\\" contacts_url_2=\\\"mailto:contact@botble.com\\\" contacts_icon_2=\\\"ti ti-mail\\\" contacts_label_3=\\\"phone\\\" contacts_content_3=\\\"+1-234-567-8901\\\" contacts_url_3=\\\"tel:+1-234-567-8901\\\" contacts_icon_3=\\\"ti ti-phone\\\" enable_lazy_loading=\\\"yes\\\"][\\/corporation]<\\/shortcode><shortcode>[services style=\\\"2\\\" title=\\\"Designing solutions &lt;span class=\'text-300\'&gt;customized&lt;br&gt;to meet your requirements&lt;\\/span&gt;\\\" subtitle=\\\"Cooperation\\\" service_ids=\\\"1,6,3,5,4,2\\\" bottom_text=\\\"Excited to take on &lt;span class=\'text-dark\'&gt;new projects&lt;\\/span&gt; and collaborate. &lt;br&gt;Let\\\\\'s chat about your ideas. &lt;a href=\'\' class=\'text-primary-2\'&gt;Reach out!&lt;\\/a&gt;\\\" enable_lazy_loading=\\\"yes\\\"][\\/services]<\\/shortcode><shortcode>[experience title=\\\"+12 &lt;span&gt;years of&lt;\\/span&gt; passion &lt;span&gt;for &lt;br \\/&gt; programming techniques&lt;\\/span&gt;\\\" subtitle=\\\"Experience\\\" role_title=\\\"Senior Software Engineer\\\" role_description=\\\"Led development of scalable web applications, &lt;span&gt;improving performance&lt;\\/span&gt; and user experience for millions of users. \\\\n Implemented machine learning algorithms to enhance search functionality. \\\\n Collaborated with cross-functional teams to integrate new features seamlessly.\\\" experiences_quantity=\\\"4\\\" experiences_date_1=\\\"2018 - Present\\\" experiences_title_1=\\\"Google\\\" experiences_logo_1=\\\"code\\/experiences\\/google.png\\\" experiences_date_2=\\\"2012 - 2015\\\" experiences_title_2=\\\"Twitter (X)\\\" experiences_logo_2=\\\"code\\/experiences\\/x.png\\\" experiences_date_3=\\\"2018 - Present\\\" experiences_title_3=\\\"Amazon\\\" experiences_logo_3=\\\"code\\/experiences\\/amazon.png\\\" experiences_date_4=\\\"2010 - 2012\\\" experiences_title_4=\\\"Paypal\\\" experiences_logo_4=\\\"code\\/experiences\\/paypal.png\\\" skills_quantity=\\\"5\\\" skills_name_1=\\\"Python\\\" skills_name_2=\\\"TensorFlow\\\" skills_name_3=\\\"Angular\\\" skills_name_4=\\\"Kubernetes\\\" skills_name_5=\\\"GCP\\\" background_image=\\\"code\\/general\\/services-bg.png\\\" enable_lazy_loading=\\\"yes\\\"][\\/experience]<\\/shortcode><shortcode>[resume style=\\\"2\\\" resume_1_title=\\\"Education\\\" resume_1_title_icon=\\\"ti ti-school\\\" resume_1_quantity=\\\"4\\\" resume_1_time_1=\\\"2018 - 2019\\\" resume_1_title_1=\\\"Certification in UX Design\\\" resume_1_subtitle_1=\\\"University of Stanford\\\" resume_1_time_2=\\\"2017 - 2018\\\" resume_1_title_2=\\\"Certification in Web Dev\\\" resume_1_subtitle_2=\\\"University of Stanford\\\" resume_1_time_3=\\\"2014 - 2016\\\" resume_1_title_3=\\\"Advanced UX\\/UI Bootcamp\\\" resume_1_subtitle_3=\\\"Design Academy\\\" resume_1_time_4=\\\"2012 - 2013\\\" resume_1_title_4=\\\"Certification in Graphic Design\\\" resume_1_subtitle_4=\\\"Coursera\\\" resume_2_title=\\\"Experience\\\" resume_2_title_icon=\\\"ti ti-stars\\\" resume_2_quantity=\\\"4\\\" resume_2_time_1=\\\"2019 - Present\\\" resume_2_title_1=\\\"Senior UI\\/UX Designer\\\" resume_2_subtitle_1=\\\"Leader in Creative team\\\" resume_2_time_2=\\\"2016 - 2019\\\" resume_2_title_2=\\\"UI\\/UX Designer\\\" resume_2_subtitle_2=\\\"Tech Startup\\\" resume_2_time_3=\\\"2014 - 2016\\\" resume_2_title_3=\\\"Freelance UI\\/UX Designer\\\" resume_2_subtitle_3=\\\"Self-Employed\\\" resume_2_time_4=\\\"2012 - 2014\\\" resume_2_title_4=\\\"Junior UI Designer\\\" resume_2_subtitle_4=\\\"Web Solutions team\\\" enable_lazy_loading=\\\"yes\\\"][\\/resume]<\\/shortcode><shortcode>[projects style=\\\"2\\\" title=\\\"My Recent Works\\\" subtitle=\\\"Projects\\\" project_ids=\\\"1,2,3,4\\\" background_image=\\\"code\\/general\\/projects-bg.png\\\" enable_lazy_loading=\\\"yes\\\"][\\/projects]<\\/shortcode><shortcode>[skills style=\\\"2\\\" title=\\\"My Skills\\\" subtitle=\\\"Projects\\\" quantity=\\\"9\\\" name_1=\\\"Next.js\\\" image_1=\\\"code\\/skills\\/1.png\\\" name_2=\\\"Firebase\\\" image_2=\\\"code\\/skills\\/2.png\\\" name_3=\\\"MongoDB\\\" image_3=\\\"code\\/skills\\/3.png\\\" name_4=\\\"Node.js\\\" image_4=\\\"code\\/skills\\/4.png\\\" name_5=\\\"Tailwind CSS\\\" image_5=\\\"code\\/skills\\/5.png\\\" name_6=\\\"React\\\" image_6=\\\"code\\/skills\\/6.png\\\" name_7=\\\"Vue.js\\\" image_7=\\\"code\\/skills\\/7.png\\\" name_8=\\\"Angular\\\" image_8=\\\"code\\/skills\\/8.png\\\" name_9=\\\"Laravel\\\" image_9=\\\"code\\/skills\\/9.png\\\" list_quantity=\\\"5\\\" list_label_1=\\\"Front-End\\\" list_content_1=\\\"HTML, CSS, JavaScript, React, Angular\\\" list_label_2=\\\"Back-End\\\" list_content_2=\\\"Node.js, Express, Python, Django\\\" list_label_3=\\\"Databases\\\" list_content_3=\\\"MySQL, PostgreSQL, MongoDB\\\" list_label_4=\\\"Tools &amp; Platforms\\\" list_content_4=\\\"Git, Docker, AWS, Heroku\\\" list_label_5=\\\"Others\\\" list_content_5=\\\"RESTful APIs, GraphQL, Agile Methodologies\\\" enable_lazy_loading=\\\"yes\\\"][\\/skills]<\\/shortcode><shortcode>[blog-posts style=\\\"2\\\" paginate=\\\"3\\\" title=\\\"Recent blog\\\" subtitle=\\\"Latest Posts\\\" enable_lazy_loading=\\\"yes\\\"][\\/blog-posts]<\\/shortcode><shortcode>[contact-form style=\\\"2\\\" display_fields=\\\"phone,email,subject,address\\\" mandatory_fields=\\\"email,subject\\\" title=\\\"Let\'s connect\\\" quantity=\\\"4\\\" label_1=\\\"Phone\\\" content_1=\\\"+1-234-567-8901\\\" icon_1=\\\"ti ti-phone\\\" url_1=\\\"tel:+1-234-567-8901\\\" label_2=\\\"Email\\\" content_2=\\\"contact@botble.com\\\" icon_2=\\\"ti ti-mail\\\" url_2=\\\"mailto:contact@botble.com\\\" label_3=\\\"X (Twitter)\\\" content_3=\\\"Botble Technologies\\\" icon_3=\\\"ti ti-user\\\" url_3=\\\"https:\\/\\/x.com\\/botble\\\" label_4=\\\"Address\\\" content_4=\\\"0811 Erdman Prairie, Joaville CA\\\" icon_4=\\\"ti ti-map\\\" url_4=\\\"https:\\/\\/google.com\\/maps\\\"][\\/contact-form]<\\/shortcode>\",\"submitter\":\"apply\",\"status\":\"published\",\"template\":\"default\",\"image\":\"257611305-391568315912249-333814.png\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'Home', 'primary', '2024-12-17 09:26:37', '2024-12-17 09:26:37'),
(24, 1, 'page', '{\"name\":\"Home\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"slug\":\"http:\\/\\/127.0.0.1:8000\",\"description\":null,\"content\":\"<shortcode>[hero-banner style=\\\"2\\\" title=\\\"Senior &lt;span&gt;{Full Stack}&lt;\\/span&gt;Web &amp; App developer\\\" subtitle=\\\"Hey,I\'m Rahman Tutul\\\" description=\\\"With expertise in cutting-edge technologies such as &lt;span&gt;PHP&lt;\\/span&gt;, &lt;span&gt;ReactJs&lt;\\/span&gt;, &lt;span&gt;MySql&lt;\\/span&gt;, and &lt;span&gt;Laravel&lt;\\/span&gt;... I deliver web solutions that are both innovative and robust.\\\" primary_button_text=\\\"Download My CV\\\" primary_button_link=\\\"\\/storage\\/main\\/resume\\/cv.pdf\\\" primary_button_icon=\\\"ti ti-download\\\" below_button_text=\\\"...and more\\\" quantity=\\\"5\\\" name_1=\\\"PHP\\\" image_1=\\\"11-118738-php-logo-png-circle-transparent-png.png\\\" name_2=\\\"JavaScript\\\" image_2=\\\"4.png\\\" name_3=\\\"MySql\\\" image_3=\\\"pngtree-mysql-database-service-code-coding-png-image-5289143.png\\\" name_4=\\\"ReactJs\\\" image_4=\\\"react-icon-512x512-u6e60ayf.png\\\" name_5=\\\"Tailwind CSS\\\" image_5=\\\"5.png\\\" background_image=\\\"code\\/general\\/hero-bg.png\\\" background_image_dark=\\\"code\\/general\\/hero-bg-dark.png\\\" right_image=\\\"people.png\\\" right_image_shape=\\\"code\\/general\\/people-shape.png\\\" enable_lazy_loading=\\\"no\\\"][\\/hero-banner]<\\/shortcode><shortcode>[stats-counter style=\\\"2\\\" quantity=\\\"4\\\" label_1=\\\"Years Experience\\\" count_1=\\\"2\\\" icon_1=\\\"ti ti-crown\\\" label_2=\\\"Projects Completed\\\" count_2=\\\"15\\\" icon_2=\\\"ti ti-device-desktop\\\" label_3=\\\"On going\\\" count_3=\\\"2\\\" icon_3=\\\"ti ti-heart-spark\\\" label_4=\\\"Technologies\\\" count_4=\\\"6\\\" icon_4=\\\"ti ti-3d-rotate\\\" background_image=\\\"code\\/general\\/static-bg.png\\\" enable_lazy_loading=\\\"no\\\"][\\/stats-counter]<\\/shortcode><shortcode>[services style=\\\"2\\\" title=\\\"Designing solutions &lt;span class=\'text-300\'&gt;customized&lt;br&gt;to meet your requirements&lt;\\/span&gt;\\\" subtitle=\\\"Cooperation\\\" service_ids=\\\"1,6,3,5,4,2\\\" bottom_text=\\\"Excited to take on &lt;span class=\'text-dark\'&gt;new projects&lt;\\/span&gt; and collaborate. &lt;br&gt;Let\\\\\'s chat about your ideas. &lt;a href=\'\' class=\'text-primary-2\'&gt;Reach out!&lt;\\/a&gt;\\\" enable_lazy_loading=\\\"yes\\\"][\\/services]<\\/shortcode><shortcode>[experience title=\\\"+12 &lt;span&gt;years of&lt;\\/span&gt; passion &lt;span&gt;for &lt;br \\/&gt; programming techniques&lt;\\/span&gt;\\\" subtitle=\\\"Experience\\\" role_title=\\\"Senior Software Engineer\\\" role_description=\\\"Led development of scalable web applications, &lt;span&gt;improving performance&lt;\\/span&gt; and user experience for millions of users. \\\\n Implemented machine learning algorithms to enhance search functionality. \\\\n Collaborated with cross-functional teams to integrate new features seamlessly.\\\" experiences_quantity=\\\"4\\\" experiences_date_1=\\\"2018 - Present\\\" experiences_title_1=\\\"Google\\\" experiences_logo_1=\\\"code\\/experiences\\/google.png\\\" experiences_date_2=\\\"2012 - 2015\\\" experiences_title_2=\\\"Twitter (X)\\\" experiences_logo_2=\\\"code\\/experiences\\/x.png\\\" experiences_date_3=\\\"2018 - Present\\\" experiences_title_3=\\\"Amazon\\\" experiences_logo_3=\\\"code\\/experiences\\/amazon.png\\\" experiences_date_4=\\\"2010 - 2012\\\" experiences_title_4=\\\"Paypal\\\" experiences_logo_4=\\\"code\\/experiences\\/paypal.png\\\" skills_quantity=\\\"5\\\" skills_name_1=\\\"Python\\\" skills_name_2=\\\"TensorFlow\\\" skills_name_3=\\\"Angular\\\" skills_name_4=\\\"Kubernetes\\\" skills_name_5=\\\"GCP\\\" background_image=\\\"code\\/general\\/services-bg.png\\\" enable_lazy_loading=\\\"yes\\\"][\\/experience]<\\/shortcode><shortcode>[resume style=\\\"2\\\" resume_1_title=\\\"Education\\\" resume_1_title_icon=\\\"ti ti-school\\\" resume_1_quantity=\\\"4\\\" resume_1_time_1=\\\"2018 - 2019\\\" resume_1_title_1=\\\"Certification in UX Design\\\" resume_1_subtitle_1=\\\"University of Stanford\\\" resume_1_time_2=\\\"2017 - 2018\\\" resume_1_title_2=\\\"Certification in Web Dev\\\" resume_1_subtitle_2=\\\"University of Stanford\\\" resume_1_time_3=\\\"2014 - 2016\\\" resume_1_title_3=\\\"Advanced UX\\/UI Bootcamp\\\" resume_1_subtitle_3=\\\"Design Academy\\\" resume_1_time_4=\\\"2012 - 2013\\\" resume_1_title_4=\\\"Certification in Graphic Design\\\" resume_1_subtitle_4=\\\"Coursera\\\" resume_2_title=\\\"Experience\\\" resume_2_title_icon=\\\"ti ti-stars\\\" resume_2_quantity=\\\"4\\\" resume_2_time_1=\\\"2019 - Present\\\" resume_2_title_1=\\\"Senior UI\\/UX Designer\\\" resume_2_subtitle_1=\\\"Leader in Creative team\\\" resume_2_time_2=\\\"2016 - 2019\\\" resume_2_title_2=\\\"UI\\/UX Designer\\\" resume_2_subtitle_2=\\\"Tech Startup\\\" resume_2_time_3=\\\"2014 - 2016\\\" resume_2_title_3=\\\"Freelance UI\\/UX Designer\\\" resume_2_subtitle_3=\\\"Self-Employed\\\" resume_2_time_4=\\\"2012 - 2014\\\" resume_2_title_4=\\\"Junior UI Designer\\\" resume_2_subtitle_4=\\\"Web Solutions team\\\" enable_lazy_loading=\\\"yes\\\"][\\/resume]<\\/shortcode><shortcode>[projects style=\\\"2\\\" title=\\\"My Recent Works\\\" subtitle=\\\"Projects\\\" project_ids=\\\"1,2,3,4\\\" background_image=\\\"code\\/general\\/projects-bg.png\\\" enable_lazy_loading=\\\"yes\\\"][\\/projects]<\\/shortcode><shortcode>[skills style=\\\"2\\\" title=\\\"My Skills\\\" subtitle=\\\"Projects\\\" quantity=\\\"9\\\" name_1=\\\"Next.js\\\" image_1=\\\"code\\/skills\\/1.png\\\" name_2=\\\"Firebase\\\" image_2=\\\"code\\/skills\\/2.png\\\" name_3=\\\"MongoDB\\\" image_3=\\\"code\\/skills\\/3.png\\\" name_4=\\\"Node.js\\\" image_4=\\\"code\\/skills\\/4.png\\\" name_5=\\\"Tailwind CSS\\\" image_5=\\\"code\\/skills\\/5.png\\\" name_6=\\\"React\\\" image_6=\\\"code\\/skills\\/6.png\\\" name_7=\\\"Vue.js\\\" image_7=\\\"code\\/skills\\/7.png\\\" name_8=\\\"Angular\\\" image_8=\\\"code\\/skills\\/8.png\\\" name_9=\\\"Laravel\\\" image_9=\\\"code\\/skills\\/9.png\\\" list_quantity=\\\"5\\\" list_label_1=\\\"Front-End\\\" list_content_1=\\\"HTML, CSS, JavaScript, React, Angular\\\" list_label_2=\\\"Back-End\\\" list_content_2=\\\"Node.js, Express, Python, Django\\\" list_label_3=\\\"Databases\\\" list_content_3=\\\"MySQL, PostgreSQL, MongoDB\\\" list_label_4=\\\"Tools &amp; Platforms\\\" list_content_4=\\\"Git, Docker, AWS, Heroku\\\" list_label_5=\\\"Others\\\" list_content_5=\\\"RESTful APIs, GraphQL, Agile Methodologies\\\" enable_lazy_loading=\\\"yes\\\"][\\/skills]<\\/shortcode><shortcode>[blog-posts style=\\\"2\\\" paginate=\\\"3\\\" title=\\\"Recent blog\\\" subtitle=\\\"Latest Posts\\\" enable_lazy_loading=\\\"yes\\\"][\\/blog-posts]<\\/shortcode><shortcode>[contact-form style=\\\"2\\\" display_fields=\\\"phone,email,subject,address\\\" mandatory_fields=\\\"email,subject\\\" title=\\\"Let\'s connect\\\" quantity=\\\"4\\\" label_1=\\\"Phone\\\" content_1=\\\"+1-234-567-8901\\\" icon_1=\\\"ti ti-phone\\\" url_1=\\\"tel:+1-234-567-8901\\\" label_2=\\\"Email\\\" content_2=\\\"contact@botble.com\\\" icon_2=\\\"ti ti-mail\\\" url_2=\\\"mailto:contact@botble.com\\\" label_3=\\\"X (Twitter)\\\" content_3=\\\"Botble Technologies\\\" icon_3=\\\"ti ti-user\\\" url_3=\\\"https:\\/\\/x.com\\/botble\\\" label_4=\\\"Address\\\" content_4=\\\"0811 Erdman Prairie, Joaville CA\\\" icon_4=\\\"ti ti-map\\\" url_4=\\\"https:\\/\\/google.com\\/maps\\\"][\\/contact-form]<\\/shortcode>\",\"submitter\":\"apply\",\"status\":\"published\",\"template\":\"default\",\"image\":\"257611305-391568315912249-333814.png\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'Home', 'primary', '2024-12-17 09:31:53', '2024-12-17 09:31:53'),
(25, 1, 'servicecategory', '{\"_method\":\"delete\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '127.0.0.1', 1, 4, 'DevOps & Cloud', 'danger', '2024-12-17 09:35:32', '2024-12-17 09:35:32'),
(26, 1, 'servicecategory', '{\"_method\":\"delete\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '127.0.0.1', 1, 3, 'Mobile App Development', 'danger', '2024-12-17 09:35:36', '2024-12-17 09:35:36'),
(27, 1, 'servicecategory', '{\"name\":\"Database Management\",\"parent_id\":null,\"description\":null,\"order\":\"0\",\"submitter\":\"apply\",\"status\":\"published\",\"image\":null}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '127.0.0.1', 1, 5, 'Database Management', 'info', '2024-12-17 09:36:10', '2024-12-17 09:36:10'),
(28, 1, 'servicecategory', '{\"name\":\"Bug Fixing\",\"parent_id\":null,\"description\":null,\"order\":\"0\",\"submitter\":\"apply\",\"status\":\"published\",\"image\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '127.0.0.1', 1, 5, 'Bug Fixing', 'primary', '2024-12-17 09:36:28', '2024-12-17 09:36:28'),
(29, 1, 'servicecategory', '{\"name\":\"Update Software\",\"parent_id\":null,\"description\":null,\"order\":\"0\",\"submitter\":\"apply\",\"status\":\"published\",\"image\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '127.0.0.1', 1, 5, 'Update Software', 'primary', '2024-12-17 09:36:49', '2024-12-17 09:36:49'),
(30, 1, 'page', '{\"name\":\"Home\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"slug\":\"http:\\/\\/127.0.0.1:8000\",\"description\":null,\"content\":\"<shortcode>[hero-banner style=\\\"2\\\" title=\\\"Senior &lt;span&gt;{Full Stack}&lt;\\/span&gt;Web &amp; App developer\\\" subtitle=\\\"Hey,I\'m Rahman Tutul\\\" description=\\\"With expertise in cutting-edge technologies such as &lt;span&gt;PHP&lt;\\/span&gt;, &lt;span&gt;ReactJs&lt;\\/span&gt;, &lt;span&gt;MySql&lt;\\/span&gt;, and &lt;span&gt;Laravel&lt;\\/span&gt;... I deliver web solutions that are both innovative and robust.\\\" primary_button_text=\\\"Download My CV\\\" primary_button_link=\\\"\\/storage\\/main\\/resume\\/cv.pdf\\\" primary_button_icon=\\\"ti ti-download\\\" below_button_text=\\\"...and more\\\" quantity=\\\"5\\\" name_1=\\\"PHP\\\" image_1=\\\"11-118738-php-logo-png-circle-transparent-png.png\\\" name_2=\\\"JavaScript\\\" image_2=\\\"4.png\\\" name_3=\\\"MySql\\\" image_3=\\\"pngtree-mysql-database-service-code-coding-png-image-5289143.png\\\" name_4=\\\"ReactJs\\\" image_4=\\\"react-icon-512x512-u6e60ayf.png\\\" name_5=\\\"Tailwind CSS\\\" image_5=\\\"5.png\\\" background_image=\\\"code\\/general\\/hero-bg.png\\\" background_image_dark=\\\"code\\/general\\/hero-bg-dark.png\\\" right_image=\\\"people.png\\\" right_image_shape=\\\"code\\/general\\/people-shape.png\\\" enable_lazy_loading=\\\"no\\\"][\\/hero-banner]<\\/shortcode><shortcode>[stats-counter style=\\\"2\\\" quantity=\\\"4\\\" label_1=\\\"Years Experience\\\" count_1=\\\"2\\\" icon_1=\\\"ti ti-crown\\\" label_2=\\\"Projects Completed\\\" count_2=\\\"15\\\" icon_2=\\\"ti ti-device-desktop\\\" label_3=\\\"On going\\\" count_3=\\\"2\\\" icon_3=\\\"ti ti-heart-spark\\\" label_4=\\\"Technologies\\\" count_4=\\\"6\\\" icon_4=\\\"ti ti-3d-rotate\\\" background_image=\\\"code\\/general\\/static-bg.png\\\" enable_lazy_loading=\\\"no\\\"][\\/stats-counter]<\\/shortcode><shortcode>[services style=\\\"1\\\" title=\\\"Designing solutions &lt;span class=\'text-300\'&gt;customized&lt;br&gt;to meet your requirements&lt;\\/span&gt;\\\" subtitle=\\\"Cooperation\\\" service_ids=\\\"1,2,3,5,6\\\" bottom_text=\\\"Excited to take on &lt;span class=\'text-dark\'&gt;new projects&lt;\\/span&gt; and collaborate. &lt;br&gt;Let\'s chat about your ideas. &lt;a href=\'\' class=\'text-primary-2\'&gt;Reach out!&lt;\\/a&gt;\\\" enable_lazy_loading=\\\"yes\\\"][\\/services]<\\/shortcode><shortcode>[experience title=\\\"+12 &lt;span&gt;years of&lt;\\/span&gt; passion &lt;span&gt;for &lt;br \\/&gt; programming techniques&lt;\\/span&gt;\\\" subtitle=\\\"Experience\\\" role_title=\\\"Senior Software Engineer\\\" role_description=\\\"Led development of scalable web applications, &lt;span&gt;improving performance&lt;\\/span&gt; and user experience for millions of users. \\\\n Implemented machine learning algorithms to enhance search functionality. \\\\n Collaborated with cross-functional teams to integrate new features seamlessly.\\\" experiences_quantity=\\\"4\\\" experiences_date_1=\\\"2018 - Present\\\" experiences_title_1=\\\"Google\\\" experiences_logo_1=\\\"code\\/experiences\\/google.png\\\" experiences_date_2=\\\"2012 - 2015\\\" experiences_title_2=\\\"Twitter (X)\\\" experiences_logo_2=\\\"code\\/experiences\\/x.png\\\" experiences_date_3=\\\"2018 - Present\\\" experiences_title_3=\\\"Amazon\\\" experiences_logo_3=\\\"code\\/experiences\\/amazon.png\\\" experiences_date_4=\\\"2010 - 2012\\\" experiences_title_4=\\\"Paypal\\\" experiences_logo_4=\\\"code\\/experiences\\/paypal.png\\\" skills_quantity=\\\"5\\\" skills_name_1=\\\"Python\\\" skills_name_2=\\\"TensorFlow\\\" skills_name_3=\\\"Angular\\\" skills_name_4=\\\"Kubernetes\\\" skills_name_5=\\\"GCP\\\" background_image=\\\"code\\/general\\/services-bg.png\\\" enable_lazy_loading=\\\"yes\\\"][\\/experience]<\\/shortcode><shortcode>[resume style=\\\"2\\\" resume_1_title=\\\"Education\\\" resume_1_title_icon=\\\"ti ti-school\\\" resume_1_quantity=\\\"4\\\" resume_1_time_1=\\\"2018 - 2019\\\" resume_1_title_1=\\\"Certification in UX Design\\\" resume_1_subtitle_1=\\\"University of Stanford\\\" resume_1_time_2=\\\"2017 - 2018\\\" resume_1_title_2=\\\"Certification in Web Dev\\\" resume_1_subtitle_2=\\\"University of Stanford\\\" resume_1_time_3=\\\"2014 - 2016\\\" resume_1_title_3=\\\"Advanced UX\\/UI Bootcamp\\\" resume_1_subtitle_3=\\\"Design Academy\\\" resume_1_time_4=\\\"2012 - 2013\\\" resume_1_title_4=\\\"Certification in Graphic Design\\\" resume_1_subtitle_4=\\\"Coursera\\\" resume_2_title=\\\"Experience\\\" resume_2_title_icon=\\\"ti ti-stars\\\" resume_2_quantity=\\\"4\\\" resume_2_time_1=\\\"2019 - Present\\\" resume_2_title_1=\\\"Senior UI\\/UX Designer\\\" resume_2_subtitle_1=\\\"Leader in Creative team\\\" resume_2_time_2=\\\"2016 - 2019\\\" resume_2_title_2=\\\"UI\\/UX Designer\\\" resume_2_subtitle_2=\\\"Tech Startup\\\" resume_2_time_3=\\\"2014 - 2016\\\" resume_2_title_3=\\\"Freelance UI\\/UX Designer\\\" resume_2_subtitle_3=\\\"Self-Employed\\\" resume_2_time_4=\\\"2012 - 2014\\\" resume_2_title_4=\\\"Junior UI Designer\\\" resume_2_subtitle_4=\\\"Web Solutions team\\\" enable_lazy_loading=\\\"yes\\\"][\\/resume]<\\/shortcode><shortcode>[projects style=\\\"2\\\" title=\\\"My Recent Works\\\" subtitle=\\\"Projects\\\" project_ids=\\\"1,2,3,4\\\" background_image=\\\"code\\/general\\/projects-bg.png\\\" enable_lazy_loading=\\\"yes\\\"][\\/projects]<\\/shortcode><shortcode>[skills style=\\\"2\\\" title=\\\"My Skills\\\" subtitle=\\\"Projects\\\" quantity=\\\"9\\\" name_1=\\\"Next.js\\\" image_1=\\\"code\\/skills\\/1.png\\\" name_2=\\\"Firebase\\\" image_2=\\\"code\\/skills\\/2.png\\\" name_3=\\\"MongoDB\\\" image_3=\\\"code\\/skills\\/3.png\\\" name_4=\\\"Node.js\\\" image_4=\\\"code\\/skills\\/4.png\\\" name_5=\\\"Tailwind CSS\\\" image_5=\\\"code\\/skills\\/5.png\\\" name_6=\\\"React\\\" image_6=\\\"code\\/skills\\/6.png\\\" name_7=\\\"Vue.js\\\" image_7=\\\"code\\/skills\\/7.png\\\" name_8=\\\"Angular\\\" image_8=\\\"code\\/skills\\/8.png\\\" name_9=\\\"Laravel\\\" image_9=\\\"code\\/skills\\/9.png\\\" list_quantity=\\\"5\\\" list_label_1=\\\"Front-End\\\" list_content_1=\\\"HTML, CSS, JavaScript, React, Angular\\\" list_label_2=\\\"Back-End\\\" list_content_2=\\\"Node.js, Express, Python, Django\\\" list_label_3=\\\"Databases\\\" list_content_3=\\\"MySQL, PostgreSQL, MongoDB\\\" list_label_4=\\\"Tools &amp; Platforms\\\" list_content_4=\\\"Git, Docker, AWS, Heroku\\\" list_label_5=\\\"Others\\\" list_content_5=\\\"RESTful APIs, GraphQL, Agile Methodologies\\\" enable_lazy_loading=\\\"yes\\\"][\\/skills]<\\/shortcode><shortcode>[blog-posts style=\\\"2\\\" paginate=\\\"3\\\" title=\\\"Recent blog\\\" subtitle=\\\"Latest Posts\\\" enable_lazy_loading=\\\"yes\\\"][\\/blog-posts]<\\/shortcode><shortcode>[contact-form style=\\\"2\\\" display_fields=\\\"phone,email,subject,address\\\" mandatory_fields=\\\"email,subject\\\" title=\\\"Let\'s connect\\\" quantity=\\\"4\\\" label_1=\\\"Phone\\\" content_1=\\\"+1-234-567-8901\\\" icon_1=\\\"ti ti-phone\\\" url_1=\\\"tel:+1-234-567-8901\\\" label_2=\\\"Email\\\" content_2=\\\"contact@botble.com\\\" icon_2=\\\"ti ti-mail\\\" url_2=\\\"mailto:contact@botble.com\\\" label_3=\\\"X (Twitter)\\\" content_3=\\\"Botble Technologies\\\" icon_3=\\\"ti ti-user\\\" url_3=\\\"https:\\/\\/x.com\\/botble\\\" label_4=\\\"Address\\\" content_4=\\\"0811 Erdman Prairie, Joaville CA\\\" icon_4=\\\"ti ti-map\\\" url_4=\\\"https:\\/\\/google.com\\/maps\\\"][\\/contact-form]<\\/shortcode>\",\"submitter\":\"apply\",\"status\":\"published\",\"template\":\"default\",\"image\":\"257611305-391568315912249-333814.png\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'Home', 'primary', '2024-12-17 09:37:39', '2024-12-17 09:37:39');
INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(31, 1, 'page', '{\"name\":\"Home\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"slug\":\"http:\\/\\/127.0.0.1:8000\",\"description\":null,\"content\":\"<shortcode>[hero-banner style=\\\"2\\\" title=\\\"Senior &lt;span&gt;{Full Stack}&lt;\\/span&gt;Web &amp; App developer\\\" subtitle=\\\"Hey,I\'m Rahman Tutul\\\" description=\\\"With expertise in cutting-edge technologies such as &lt;span&gt;PHP&lt;\\/span&gt;, &lt;span&gt;ReactJs&lt;\\/span&gt;, &lt;span&gt;MySql&lt;\\/span&gt;, and &lt;span&gt;Laravel&lt;\\/span&gt;... I deliver web solutions that are both innovative and robust.\\\" primary_button_text=\\\"Download My CV\\\" primary_button_link=\\\"\\/storage\\/main\\/resume\\/cv.pdf\\\" primary_button_icon=\\\"ti ti-download\\\" below_button_text=\\\"...and more\\\" quantity=\\\"5\\\" name_1=\\\"PHP\\\" image_1=\\\"11-118738-php-logo-png-circle-transparent-png.png\\\" name_2=\\\"JavaScript\\\" image_2=\\\"4.png\\\" name_3=\\\"MySql\\\" image_3=\\\"pngtree-mysql-database-service-code-coding-png-image-5289143.png\\\" name_4=\\\"ReactJs\\\" image_4=\\\"react-icon-512x512-u6e60ayf.png\\\" name_5=\\\"Tailwind CSS\\\" image_5=\\\"5.png\\\" background_image=\\\"code\\/general\\/hero-bg.png\\\" background_image_dark=\\\"code\\/general\\/hero-bg-dark.png\\\" right_image=\\\"people.png\\\" right_image_shape=\\\"code\\/general\\/people-shape.png\\\" enable_lazy_loading=\\\"no\\\"][\\/hero-banner]<\\/shortcode><shortcode>[stats-counter style=\\\"2\\\" quantity=\\\"4\\\" label_1=\\\"Years Experience\\\" count_1=\\\"2\\\" icon_1=\\\"ti ti-crown\\\" label_2=\\\"Projects Completed\\\" count_2=\\\"15\\\" icon_2=\\\"ti ti-device-desktop\\\" label_3=\\\"On going\\\" count_3=\\\"2\\\" icon_3=\\\"ti ti-heart-spark\\\" label_4=\\\"Technologies\\\" count_4=\\\"6\\\" icon_4=\\\"ti ti-3d-rotate\\\" background_image=\\\"code\\/general\\/static-bg.png\\\" enable_lazy_loading=\\\"no\\\"][\\/stats-counter]<\\/shortcode><shortcode>[services style=\\\"4\\\" title=\\\"Designing solutions &lt;span class=\'text-300\'&gt;customized&lt;br&gt;to meet your requirements&lt;\\/span&gt;\\\" subtitle=\\\"Cooperation\\\" service_ids=\\\"1,2,3,5,6\\\" bottom_text=\\\"Excited to take on &lt;span class=\'text-dark\'&gt;new projects&lt;\\/span&gt; and collaborate. &lt;br&gt;Let\'s chat about your ideas. &lt;a href=\'\' class=\'text-primary-2\'&gt;Reach out!&lt;\\/a&gt;\\\" enable_lazy_loading=\\\"yes\\\"][\\/services]<\\/shortcode><shortcode>[experience title=\\\"+12 &lt;span&gt;years of&lt;\\/span&gt; passion &lt;span&gt;for &lt;br \\/&gt; programming techniques&lt;\\/span&gt;\\\" subtitle=\\\"Experience\\\" role_title=\\\"Senior Software Engineer\\\" role_description=\\\"Led development of scalable web applications, &lt;span&gt;improving performance&lt;\\/span&gt; and user experience for millions of users. \\\\n Implemented machine learning algorithms to enhance search functionality. \\\\n Collaborated with cross-functional teams to integrate new features seamlessly.\\\" experiences_quantity=\\\"4\\\" experiences_date_1=\\\"2018 - Present\\\" experiences_title_1=\\\"Google\\\" experiences_logo_1=\\\"code\\/experiences\\/google.png\\\" experiences_date_2=\\\"2012 - 2015\\\" experiences_title_2=\\\"Twitter (X)\\\" experiences_logo_2=\\\"code\\/experiences\\/x.png\\\" experiences_date_3=\\\"2018 - Present\\\" experiences_title_3=\\\"Amazon\\\" experiences_logo_3=\\\"code\\/experiences\\/amazon.png\\\" experiences_date_4=\\\"2010 - 2012\\\" experiences_title_4=\\\"Paypal\\\" experiences_logo_4=\\\"code\\/experiences\\/paypal.png\\\" skills_quantity=\\\"5\\\" skills_name_1=\\\"Python\\\" skills_name_2=\\\"TensorFlow\\\" skills_name_3=\\\"Angular\\\" skills_name_4=\\\"Kubernetes\\\" skills_name_5=\\\"GCP\\\" background_image=\\\"code\\/general\\/services-bg.png\\\" enable_lazy_loading=\\\"yes\\\"][\\/experience]<\\/shortcode><shortcode>[resume style=\\\"2\\\" resume_1_title=\\\"Education\\\" resume_1_title_icon=\\\"ti ti-school\\\" resume_1_quantity=\\\"4\\\" resume_1_time_1=\\\"2018 - 2019\\\" resume_1_title_1=\\\"Certification in UX Design\\\" resume_1_subtitle_1=\\\"University of Stanford\\\" resume_1_time_2=\\\"2017 - 2018\\\" resume_1_title_2=\\\"Certification in Web Dev\\\" resume_1_subtitle_2=\\\"University of Stanford\\\" resume_1_time_3=\\\"2014 - 2016\\\" resume_1_title_3=\\\"Advanced UX\\/UI Bootcamp\\\" resume_1_subtitle_3=\\\"Design Academy\\\" resume_1_time_4=\\\"2012 - 2013\\\" resume_1_title_4=\\\"Certification in Graphic Design\\\" resume_1_subtitle_4=\\\"Coursera\\\" resume_2_title=\\\"Experience\\\" resume_2_title_icon=\\\"ti ti-stars\\\" resume_2_quantity=\\\"4\\\" resume_2_time_1=\\\"2019 - Present\\\" resume_2_title_1=\\\"Senior UI\\/UX Designer\\\" resume_2_subtitle_1=\\\"Leader in Creative team\\\" resume_2_time_2=\\\"2016 - 2019\\\" resume_2_title_2=\\\"UI\\/UX Designer\\\" resume_2_subtitle_2=\\\"Tech Startup\\\" resume_2_time_3=\\\"2014 - 2016\\\" resume_2_title_3=\\\"Freelance UI\\/UX Designer\\\" resume_2_subtitle_3=\\\"Self-Employed\\\" resume_2_time_4=\\\"2012 - 2014\\\" resume_2_title_4=\\\"Junior UI Designer\\\" resume_2_subtitle_4=\\\"Web Solutions team\\\" enable_lazy_loading=\\\"yes\\\"][\\/resume]<\\/shortcode><shortcode>[projects style=\\\"2\\\" title=\\\"My Recent Works\\\" subtitle=\\\"Projects\\\" project_ids=\\\"1,2,3,4\\\" background_image=\\\"code\\/general\\/projects-bg.png\\\" enable_lazy_loading=\\\"yes\\\"][\\/projects]<\\/shortcode><shortcode>[skills style=\\\"2\\\" title=\\\"My Skills\\\" subtitle=\\\"Projects\\\" quantity=\\\"9\\\" name_1=\\\"Next.js\\\" image_1=\\\"code\\/skills\\/1.png\\\" name_2=\\\"Firebase\\\" image_2=\\\"code\\/skills\\/2.png\\\" name_3=\\\"MongoDB\\\" image_3=\\\"code\\/skills\\/3.png\\\" name_4=\\\"Node.js\\\" image_4=\\\"code\\/skills\\/4.png\\\" name_5=\\\"Tailwind CSS\\\" image_5=\\\"code\\/skills\\/5.png\\\" name_6=\\\"React\\\" image_6=\\\"code\\/skills\\/6.png\\\" name_7=\\\"Vue.js\\\" image_7=\\\"code\\/skills\\/7.png\\\" name_8=\\\"Angular\\\" image_8=\\\"code\\/skills\\/8.png\\\" name_9=\\\"Laravel\\\" image_9=\\\"code\\/skills\\/9.png\\\" list_quantity=\\\"5\\\" list_label_1=\\\"Front-End\\\" list_content_1=\\\"HTML, CSS, JavaScript, React, Angular\\\" list_label_2=\\\"Back-End\\\" list_content_2=\\\"Node.js, Express, Python, Django\\\" list_label_3=\\\"Databases\\\" list_content_3=\\\"MySQL, PostgreSQL, MongoDB\\\" list_label_4=\\\"Tools &amp; Platforms\\\" list_content_4=\\\"Git, Docker, AWS, Heroku\\\" list_label_5=\\\"Others\\\" list_content_5=\\\"RESTful APIs, GraphQL, Agile Methodologies\\\" enable_lazy_loading=\\\"yes\\\"][\\/skills]<\\/shortcode><shortcode>[blog-posts style=\\\"2\\\" paginate=\\\"3\\\" title=\\\"Recent blog\\\" subtitle=\\\"Latest Posts\\\" enable_lazy_loading=\\\"yes\\\"][\\/blog-posts]<\\/shortcode><shortcode>[contact-form style=\\\"2\\\" display_fields=\\\"phone,email,subject,address\\\" mandatory_fields=\\\"email,subject\\\" title=\\\"Let\'s connect\\\" quantity=\\\"4\\\" label_1=\\\"Phone\\\" content_1=\\\"+1-234-567-8901\\\" icon_1=\\\"ti ti-phone\\\" url_1=\\\"tel:+1-234-567-8901\\\" label_2=\\\"Email\\\" content_2=\\\"contact@botble.com\\\" icon_2=\\\"ti ti-mail\\\" url_2=\\\"mailto:contact@botble.com\\\" label_3=\\\"X (Twitter)\\\" content_3=\\\"Botble Technologies\\\" icon_3=\\\"ti ti-user\\\" url_3=\\\"https:\\/\\/x.com\\/botble\\\" label_4=\\\"Address\\\" content_4=\\\"0811 Erdman Prairie, Joaville CA\\\" icon_4=\\\"ti ti-map\\\" url_4=\\\"https:\\/\\/google.com\\/maps\\\"][\\/contact-form]<\\/shortcode>\",\"submitter\":\"apply\",\"status\":\"published\",\"template\":\"default\",\"image\":\"257611305-391568315912249-333814.png\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'Home', 'primary', '2024-12-17 09:38:26', '2024-12-17 09:38:26'),
(32, 1, 'page', '{\"name\":\"Home\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"slug\":\"http:\\/\\/127.0.0.1:8000\",\"description\":null,\"content\":\"<shortcode>[hero-banner style=\\\"2\\\" title=\\\"Senior &lt;span&gt;{Full Stack}&lt;\\/span&gt;Web &amp; App developer\\\" subtitle=\\\"Hey,I\'m Rahman Tutul\\\" description=\\\"With expertise in cutting-edge technologies such as &lt;span&gt;PHP&lt;\\/span&gt;, &lt;span&gt;ReactJs&lt;\\/span&gt;, &lt;span&gt;MySql&lt;\\/span&gt;, and &lt;span&gt;Laravel&lt;\\/span&gt;... I deliver web solutions that are both innovative and robust.\\\" primary_button_text=\\\"Download My CV\\\" primary_button_link=\\\"\\/storage\\/main\\/resume\\/cv.pdf\\\" primary_button_icon=\\\"ti ti-download\\\" below_button_text=\\\"...and more\\\" quantity=\\\"5\\\" name_1=\\\"PHP\\\" image_1=\\\"11-118738-php-logo-png-circle-transparent-png.png\\\" name_2=\\\"JavaScript\\\" image_2=\\\"4.png\\\" name_3=\\\"MySql\\\" image_3=\\\"pngtree-mysql-database-service-code-coding-png-image-5289143.png\\\" name_4=\\\"ReactJs\\\" image_4=\\\"react-icon-512x512-u6e60ayf.png\\\" name_5=\\\"Tailwind CSS\\\" image_5=\\\"5.png\\\" background_image=\\\"code\\/general\\/hero-bg.png\\\" background_image_dark=\\\"code\\/general\\/hero-bg-dark.png\\\" right_image=\\\"people.png\\\" right_image_shape=\\\"code\\/general\\/people-shape.png\\\" enable_lazy_loading=\\\"no\\\"][\\/hero-banner]<\\/shortcode><shortcode>[stats-counter style=\\\"2\\\" quantity=\\\"4\\\" label_1=\\\"Years Experience\\\" count_1=\\\"2\\\" icon_1=\\\"ti ti-crown\\\" label_2=\\\"Projects Completed\\\" count_2=\\\"15\\\" icon_2=\\\"ti ti-device-desktop\\\" label_3=\\\"On going\\\" count_3=\\\"2\\\" icon_3=\\\"ti ti-heart-spark\\\" label_4=\\\"Technologies\\\" count_4=\\\"6\\\" icon_4=\\\"ti ti-3d-rotate\\\" background_image=\\\"code\\/general\\/static-bg.png\\\" enable_lazy_loading=\\\"no\\\"][\\/stats-counter]<\\/shortcode><shortcode>[services style=\\\"2\\\" title=\\\"Designing solutions &lt;span class=\'text-300\'&gt;customized&lt;br&gt;to meet your requirements&lt;\\/span&gt;\\\" subtitle=\\\"Cooperation\\\" service_ids=\\\"1,2,3,5,6\\\" bottom_text=\\\"Excited to take on &lt;span class=\'text-dark\'&gt;new projects&lt;\\/span&gt; and collaborate. &lt;br&gt;Let\'s chat about your ideas. &lt;a href=\'\' class=\'text-primary-2\'&gt;Reach out!&lt;\\/a&gt;\\\" enable_lazy_loading=\\\"yes\\\"][\\/services]<\\/shortcode><shortcode>[experience title=\\\"+12 &lt;span&gt;years of&lt;\\/span&gt; passion &lt;span&gt;for &lt;br \\/&gt; programming techniques&lt;\\/span&gt;\\\" subtitle=\\\"Experience\\\" role_title=\\\"Senior Software Engineer\\\" role_description=\\\"Led development of scalable web applications, &lt;span&gt;improving performance&lt;\\/span&gt; and user experience for millions of users. \\\\n Implemented machine learning algorithms to enhance search functionality. \\\\n Collaborated with cross-functional teams to integrate new features seamlessly.\\\" experiences_quantity=\\\"4\\\" experiences_date_1=\\\"2018 - Present\\\" experiences_title_1=\\\"Google\\\" experiences_logo_1=\\\"code\\/experiences\\/google.png\\\" experiences_date_2=\\\"2012 - 2015\\\" experiences_title_2=\\\"Twitter (X)\\\" experiences_logo_2=\\\"code\\/experiences\\/x.png\\\" experiences_date_3=\\\"2018 - Present\\\" experiences_title_3=\\\"Amazon\\\" experiences_logo_3=\\\"code\\/experiences\\/amazon.png\\\" experiences_date_4=\\\"2010 - 2012\\\" experiences_title_4=\\\"Paypal\\\" experiences_logo_4=\\\"code\\/experiences\\/paypal.png\\\" skills_quantity=\\\"5\\\" skills_name_1=\\\"Python\\\" skills_name_2=\\\"TensorFlow\\\" skills_name_3=\\\"Angular\\\" skills_name_4=\\\"Kubernetes\\\" skills_name_5=\\\"GCP\\\" background_image=\\\"code\\/general\\/services-bg.png\\\" enable_lazy_loading=\\\"yes\\\"][\\/experience]<\\/shortcode><shortcode>[resume style=\\\"2\\\" resume_1_title=\\\"Education\\\" resume_1_title_icon=\\\"ti ti-school\\\" resume_1_quantity=\\\"4\\\" resume_1_time_1=\\\"2018 - 2019\\\" resume_1_title_1=\\\"Certification in UX Design\\\" resume_1_subtitle_1=\\\"University of Stanford\\\" resume_1_time_2=\\\"2017 - 2018\\\" resume_1_title_2=\\\"Certification in Web Dev\\\" resume_1_subtitle_2=\\\"University of Stanford\\\" resume_1_time_3=\\\"2014 - 2016\\\" resume_1_title_3=\\\"Advanced UX\\/UI Bootcamp\\\" resume_1_subtitle_3=\\\"Design Academy\\\" resume_1_time_4=\\\"2012 - 2013\\\" resume_1_title_4=\\\"Certification in Graphic Design\\\" resume_1_subtitle_4=\\\"Coursera\\\" resume_2_title=\\\"Experience\\\" resume_2_title_icon=\\\"ti ti-stars\\\" resume_2_quantity=\\\"4\\\" resume_2_time_1=\\\"2019 - Present\\\" resume_2_title_1=\\\"Senior UI\\/UX Designer\\\" resume_2_subtitle_1=\\\"Leader in Creative team\\\" resume_2_time_2=\\\"2016 - 2019\\\" resume_2_title_2=\\\"UI\\/UX Designer\\\" resume_2_subtitle_2=\\\"Tech Startup\\\" resume_2_time_3=\\\"2014 - 2016\\\" resume_2_title_3=\\\"Freelance UI\\/UX Designer\\\" resume_2_subtitle_3=\\\"Self-Employed\\\" resume_2_time_4=\\\"2012 - 2014\\\" resume_2_title_4=\\\"Junior UI Designer\\\" resume_2_subtitle_4=\\\"Web Solutions team\\\" enable_lazy_loading=\\\"yes\\\"][\\/resume]<\\/shortcode><shortcode>[projects style=\\\"2\\\" title=\\\"My Recent Works\\\" subtitle=\\\"Projects\\\" project_ids=\\\"1,2,3,4\\\" background_image=\\\"code\\/general\\/projects-bg.png\\\" enable_lazy_loading=\\\"yes\\\"][\\/projects]<\\/shortcode><shortcode>[skills style=\\\"2\\\" title=\\\"My Skills\\\" subtitle=\\\"Projects\\\" quantity=\\\"9\\\" name_1=\\\"Next.js\\\" image_1=\\\"code\\/skills\\/1.png\\\" name_2=\\\"Firebase\\\" image_2=\\\"code\\/skills\\/2.png\\\" name_3=\\\"MongoDB\\\" image_3=\\\"code\\/skills\\/3.png\\\" name_4=\\\"Node.js\\\" image_4=\\\"code\\/skills\\/4.png\\\" name_5=\\\"Tailwind CSS\\\" image_5=\\\"code\\/skills\\/5.png\\\" name_6=\\\"React\\\" image_6=\\\"code\\/skills\\/6.png\\\" name_7=\\\"Vue.js\\\" image_7=\\\"code\\/skills\\/7.png\\\" name_8=\\\"Angular\\\" image_8=\\\"code\\/skills\\/8.png\\\" name_9=\\\"Laravel\\\" image_9=\\\"code\\/skills\\/9.png\\\" list_quantity=\\\"5\\\" list_label_1=\\\"Front-End\\\" list_content_1=\\\"HTML, CSS, JavaScript, React, Angular\\\" list_label_2=\\\"Back-End\\\" list_content_2=\\\"Node.js, Express, Python, Django\\\" list_label_3=\\\"Databases\\\" list_content_3=\\\"MySQL, PostgreSQL, MongoDB\\\" list_label_4=\\\"Tools &amp; Platforms\\\" list_content_4=\\\"Git, Docker, AWS, Heroku\\\" list_label_5=\\\"Others\\\" list_content_5=\\\"RESTful APIs, GraphQL, Agile Methodologies\\\" enable_lazy_loading=\\\"yes\\\"][\\/skills]<\\/shortcode><shortcode>[blog-posts style=\\\"2\\\" paginate=\\\"3\\\" title=\\\"Recent blog\\\" subtitle=\\\"Latest Posts\\\" enable_lazy_loading=\\\"yes\\\"][\\/blog-posts]<\\/shortcode><shortcode>[contact-form style=\\\"2\\\" display_fields=\\\"phone,email,subject,address\\\" mandatory_fields=\\\"email,subject\\\" title=\\\"Let\'s connect\\\" quantity=\\\"4\\\" label_1=\\\"Phone\\\" content_1=\\\"+1-234-567-8901\\\" icon_1=\\\"ti ti-phone\\\" url_1=\\\"tel:+1-234-567-8901\\\" label_2=\\\"Email\\\" content_2=\\\"contact@botble.com\\\" icon_2=\\\"ti ti-mail\\\" url_2=\\\"mailto:contact@botble.com\\\" label_3=\\\"X (Twitter)\\\" content_3=\\\"Botble Technologies\\\" icon_3=\\\"ti ti-user\\\" url_3=\\\"https:\\/\\/x.com\\/botble\\\" label_4=\\\"Address\\\" content_4=\\\"0811 Erdman Prairie, Joaville CA\\\" icon_4=\\\"ti ti-map\\\" url_4=\\\"https:\\/\\/google.com\\/maps\\\"][\\/contact-form]<\\/shortcode>\",\"submitter\":\"apply\",\"status\":\"published\",\"template\":\"default\",\"image\":\"257611305-391568315912249-333814.png\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'Home', 'primary', '2024-12-17 09:39:15', '2024-12-17 09:39:15'),
(33, 1, 'servicecategory', '{\"name\":\"Software\\/Website Update\",\"parent_id\":null,\"description\":null,\"order\":\"0\",\"submitter\":\"apply\",\"status\":\"published\",\"image\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '127.0.0.1', 1, 5, 'Software/Website Update', 'primary', '2024-12-17 09:40:10', '2024-12-17 09:40:10'),
(34, 1, 'servicecategory', '{\"name\":\"Software\\/Website Update\",\"parent_id\":null,\"description\":null,\"order\":\"0\",\"submitter\":\"save\",\"status\":\"published\",\"image\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '127.0.0.1', 1, 5, 'Software/Website Update', 'primary', '2024-12-17 09:40:44', '2024-12-17 09:40:44'),
(35, 1, 'service', '{\"_method\":\"delete\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '127.0.0.1', 1, 4, 'DevOps Consulting', 'danger', '2024-12-17 09:41:08', '2024-12-17 09:41:08'),
(36, 1, 'service', '{\"category_id\":\"5\",\"name\":\"Bug fixing\",\"model\":\"Botble\\\\Portfolio\\\\Models\\\\Service\",\"slug\":\"bug-fixing\",\"slug_id\":\"0\",\"is_slug_editable\":\"1\",\"description\":\"specialize in custom Laravel applications, bug fixing, and seamless server deployment, ensuring that your projects are functional, efficient, and reliable. In addition to Laravel, I offer expertise in WordPress and Shopify, providing custom design, theme customization, and full development services for responsive, user-friendly sites. Dedicated to delivering quality work and exceptional customers.\",\"content\":\"<ol><li>Api Integration<\\/li><li>Authentication error<\\/li><li>Javascript Issue<\\/li><li>Listing\\/Creation\\/Editing\\/Deletion Issue<\\/li><li>UI\\/UX Issue<\\/li><li>Website Loading issue<\\/li><li>Data Overflow<\\/li><li>Payment Getaway issue <\\/li><li>Any broken url<\\/li><li><p>Email\\/Messaging\\/Verification issue<\\/p><p>&nbsp;<\\/p><\\/li><\\/ol>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"seo_meta_image\":null,\"status\":\"published\",\"is_featured\":\"0\",\"image\":null,\"submitter\":\"apply\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '127.0.0.1', 1, 7, 'Bug fixing', 'info', '2024-12-17 09:49:25', '2024-12-17 09:49:25'),
(37, 1, 'page', '{\"name\":\"Home\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"slug\":\"http:\\/\\/127.0.0.1:8000\",\"description\":null,\"content\":\"<shortcode>[hero-banner style=\\\"2\\\" title=\\\"Senior &lt;span&gt;{Full Stack}&lt;\\/span&gt;Web &amp; App developer\\\" subtitle=\\\"Hey,I\'m Rahman Tutul\\\" description=\\\"With expertise in cutting-edge technologies such as &lt;span&gt;PHP&lt;\\/span&gt;, &lt;span&gt;ReactJs&lt;\\/span&gt;, &lt;span&gt;MySql&lt;\\/span&gt;, and &lt;span&gt;Laravel&lt;\\/span&gt;... I deliver web solutions that are both innovative and robust.\\\" primary_button_text=\\\"Download My CV\\\" primary_button_link=\\\"\\/storage\\/main\\/resume\\/cv.pdf\\\" primary_button_icon=\\\"ti ti-download\\\" below_button_text=\\\"...and more\\\" quantity=\\\"5\\\" name_1=\\\"PHP\\\" image_1=\\\"11-118738-php-logo-png-circle-transparent-png.png\\\" name_2=\\\"JavaScript\\\" image_2=\\\"4.png\\\" name_3=\\\"MySql\\\" image_3=\\\"pngtree-mysql-database-service-code-coding-png-image-5289143.png\\\" name_4=\\\"ReactJs\\\" image_4=\\\"react-icon-512x512-u6e60ayf.png\\\" name_5=\\\"Tailwind CSS\\\" image_5=\\\"5.png\\\" background_image=\\\"code\\/general\\/hero-bg.png\\\" background_image_dark=\\\"code\\/general\\/hero-bg-dark.png\\\" right_image=\\\"people.png\\\" right_image_shape=\\\"code\\/general\\/people-shape.png\\\" enable_lazy_loading=\\\"no\\\"][\\/hero-banner]<\\/shortcode><shortcode>[stats-counter style=\\\"2\\\" quantity=\\\"4\\\" label_1=\\\"Years Experience\\\" count_1=\\\"2\\\" icon_1=\\\"ti ti-crown\\\" label_2=\\\"Projects Completed\\\" count_2=\\\"15\\\" icon_2=\\\"ti ti-device-desktop\\\" label_3=\\\"On going\\\" count_3=\\\"2\\\" icon_3=\\\"ti ti-heart-spark\\\" label_4=\\\"Technologies\\\" count_4=\\\"6\\\" icon_4=\\\"ti ti-3d-rotate\\\" background_image=\\\"code\\/general\\/static-bg.png\\\" enable_lazy_loading=\\\"no\\\"][\\/stats-counter]<\\/shortcode><shortcode>[services style=\\\"2\\\" title=\\\"Designing solutions &lt;span class=\'text-300\'&gt;customized&lt;br&gt;to meet your requirements&lt;\\/span&gt;\\\" subtitle=\\\"Cooperation\\\" service_ids=\\\"1,2,3,5,6,7\\\" bottom_text=\\\"Excited to take on &lt;span class=\'text-dark\'&gt;new projects&lt;\\/span&gt; and collaborate. &lt;br&gt;Let\'s chat about your ideas. &lt;a href=\'\' class=\'text-primary-2\'&gt;Reach out!&lt;\\/a&gt;\\\" enable_lazy_loading=\\\"yes\\\"][\\/services]<\\/shortcode><shortcode>[experience title=\\\"+12 &lt;span&gt;years of&lt;\\/span&gt; passion &lt;span&gt;for &lt;br \\/&gt; programming techniques&lt;\\/span&gt;\\\" subtitle=\\\"Experience\\\" role_title=\\\"Senior Software Engineer\\\" role_description=\\\"Led development of scalable web applications, &lt;span&gt;improving performance&lt;\\/span&gt; and user experience for millions of users. \\\\n Implemented machine learning algorithms to enhance search functionality. \\\\n Collaborated with cross-functional teams to integrate new features seamlessly.\\\" experiences_quantity=\\\"4\\\" experiences_date_1=\\\"2018 - Present\\\" experiences_title_1=\\\"Google\\\" experiences_logo_1=\\\"code\\/experiences\\/google.png\\\" experiences_date_2=\\\"2012 - 2015\\\" experiences_title_2=\\\"Twitter (X)\\\" experiences_logo_2=\\\"code\\/experiences\\/x.png\\\" experiences_date_3=\\\"2018 - Present\\\" experiences_title_3=\\\"Amazon\\\" experiences_logo_3=\\\"code\\/experiences\\/amazon.png\\\" experiences_date_4=\\\"2010 - 2012\\\" experiences_title_4=\\\"Paypal\\\" experiences_logo_4=\\\"code\\/experiences\\/paypal.png\\\" skills_quantity=\\\"5\\\" skills_name_1=\\\"Python\\\" skills_name_2=\\\"TensorFlow\\\" skills_name_3=\\\"Angular\\\" skills_name_4=\\\"Kubernetes\\\" skills_name_5=\\\"GCP\\\" background_image=\\\"code\\/general\\/services-bg.png\\\" enable_lazy_loading=\\\"yes\\\"][\\/experience]<\\/shortcode><shortcode>[resume style=\\\"2\\\" resume_1_title=\\\"Education\\\" resume_1_title_icon=\\\"ti ti-school\\\" resume_1_quantity=\\\"4\\\" resume_1_time_1=\\\"2018 - 2019\\\" resume_1_title_1=\\\"Certification in UX Design\\\" resume_1_subtitle_1=\\\"University of Stanford\\\" resume_1_time_2=\\\"2017 - 2018\\\" resume_1_title_2=\\\"Certification in Web Dev\\\" resume_1_subtitle_2=\\\"University of Stanford\\\" resume_1_time_3=\\\"2014 - 2016\\\" resume_1_title_3=\\\"Advanced UX\\/UI Bootcamp\\\" resume_1_subtitle_3=\\\"Design Academy\\\" resume_1_time_4=\\\"2012 - 2013\\\" resume_1_title_4=\\\"Certification in Graphic Design\\\" resume_1_subtitle_4=\\\"Coursera\\\" resume_2_title=\\\"Experience\\\" resume_2_title_icon=\\\"ti ti-stars\\\" resume_2_quantity=\\\"4\\\" resume_2_time_1=\\\"2019 - Present\\\" resume_2_title_1=\\\"Senior UI\\/UX Designer\\\" resume_2_subtitle_1=\\\"Leader in Creative team\\\" resume_2_time_2=\\\"2016 - 2019\\\" resume_2_title_2=\\\"UI\\/UX Designer\\\" resume_2_subtitle_2=\\\"Tech Startup\\\" resume_2_time_3=\\\"2014 - 2016\\\" resume_2_title_3=\\\"Freelance UI\\/UX Designer\\\" resume_2_subtitle_3=\\\"Self-Employed\\\" resume_2_time_4=\\\"2012 - 2014\\\" resume_2_title_4=\\\"Junior UI Designer\\\" resume_2_subtitle_4=\\\"Web Solutions team\\\" enable_lazy_loading=\\\"yes\\\"][\\/resume]<\\/shortcode><shortcode>[projects style=\\\"2\\\" title=\\\"My Recent Works\\\" subtitle=\\\"Projects\\\" project_ids=\\\"1,2,3,4\\\" background_image=\\\"code\\/general\\/projects-bg.png\\\" enable_lazy_loading=\\\"yes\\\"][\\/projects]<\\/shortcode><shortcode>[skills style=\\\"2\\\" title=\\\"My Skills\\\" subtitle=\\\"Projects\\\" quantity=\\\"9\\\" name_1=\\\"Next.js\\\" image_1=\\\"code\\/skills\\/1.png\\\" name_2=\\\"Firebase\\\" image_2=\\\"code\\/skills\\/2.png\\\" name_3=\\\"MongoDB\\\" image_3=\\\"code\\/skills\\/3.png\\\" name_4=\\\"Node.js\\\" image_4=\\\"code\\/skills\\/4.png\\\" name_5=\\\"Tailwind CSS\\\" image_5=\\\"code\\/skills\\/5.png\\\" name_6=\\\"React\\\" image_6=\\\"code\\/skills\\/6.png\\\" name_7=\\\"Vue.js\\\" image_7=\\\"code\\/skills\\/7.png\\\" name_8=\\\"Angular\\\" image_8=\\\"code\\/skills\\/8.png\\\" name_9=\\\"Laravel\\\" image_9=\\\"code\\/skills\\/9.png\\\" list_quantity=\\\"5\\\" list_label_1=\\\"Front-End\\\" list_content_1=\\\"HTML, CSS, JavaScript, React, Angular\\\" list_label_2=\\\"Back-End\\\" list_content_2=\\\"Node.js, Express, Python, Django\\\" list_label_3=\\\"Databases\\\" list_content_3=\\\"MySQL, PostgreSQL, MongoDB\\\" list_label_4=\\\"Tools &amp; Platforms\\\" list_content_4=\\\"Git, Docker, AWS, Heroku\\\" list_label_5=\\\"Others\\\" list_content_5=\\\"RESTful APIs, GraphQL, Agile Methodologies\\\" enable_lazy_loading=\\\"yes\\\"][\\/skills]<\\/shortcode><shortcode>[blog-posts style=\\\"2\\\" paginate=\\\"3\\\" title=\\\"Recent blog\\\" subtitle=\\\"Latest Posts\\\" enable_lazy_loading=\\\"yes\\\"][\\/blog-posts]<\\/shortcode><shortcode>[contact-form style=\\\"2\\\" display_fields=\\\"phone,email,subject,address\\\" mandatory_fields=\\\"email,subject\\\" title=\\\"Let\'s connect\\\" quantity=\\\"4\\\" label_1=\\\"Phone\\\" content_1=\\\"+1-234-567-8901\\\" icon_1=\\\"ti ti-phone\\\" url_1=\\\"tel:+1-234-567-8901\\\" label_2=\\\"Email\\\" content_2=\\\"contact@botble.com\\\" icon_2=\\\"ti ti-mail\\\" url_2=\\\"mailto:contact@botble.com\\\" label_3=\\\"X (Twitter)\\\" content_3=\\\"Botble Technologies\\\" icon_3=\\\"ti ti-user\\\" url_3=\\\"https:\\/\\/x.com\\/botble\\\" label_4=\\\"Address\\\" content_4=\\\"0811 Erdman Prairie, Joaville CA\\\" icon_4=\\\"ti ti-map\\\" url_4=\\\"https:\\/\\/google.com\\/maps\\\"][\\/contact-form]<\\/shortcode>\",\"submitter\":\"apply\",\"status\":\"published\",\"template\":\"default\",\"image\":\"257611305-391568315912249-333814.png\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'Home', 'primary', '2024-12-17 09:49:43', '2024-12-17 09:49:43'),
(38, 1, 'service', '{\"category_id\":\"5\",\"name\":\"Bug fixing\",\"model\":\"Botble\\\\Portfolio\\\\Models\\\\Service\",\"slug\":\"bug-fixing\",\"slug_id\":\"50\",\"is_slug_editable\":\"1\",\"description\":\"specialize in custom Laravel applications, bug fixing, and seamless server deployment, ensuring that your projects are functional, efficient, and reliable. In addition to Laravel, I offer expertise in WordPress and Shopify, providing custom design, theme customization, and full development services for responsive, user-friendly sites. Dedicated to delivering quality work and exceptional customers.\",\"content\":\"<ol><li>Api Integration<\\/li><li>Authentication error<\\/li><li>Javascript Issue<\\/li><li>Listing\\/Creation\\/Editing\\/Deletion Issue<\\/li><li>UI\\/UX Issue<\\/li><li>Website Loading issue<\\/li><li>Data Overflow<\\/li><li>Payment Getaway issue<\\/li><li>Any broken url<\\/li><li><p>Email\\/Messaging\\/Verification issue<\\/p><p>&nbsp;<\\/p><\\/li><\\/ol>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"seo_meta_image\":null,\"status\":\"published\",\"is_featured\":\"0\",\"image\":null,\"icon\":\"ti ti-bug-filled\",\"submitter\":\"apply\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '127.0.0.1', 1, 7, 'Bug fixing', 'primary', '2024-12-17 09:52:37', '2024-12-17 09:52:37'),
(39, 1, 'service', '{\"category_id\":\"5\",\"name\":\"Bug fixing\",\"model\":\"Botble\\\\Portfolio\\\\Models\\\\Service\",\"slug\":\"bug-fixing\",\"slug_id\":\"50\",\"is_slug_editable\":\"1\",\"description\":\"specialize in custom Laravel applications, bug fixing, and seamless server deployment, ensuring that your projects are functional, efficient, and reliable.\",\"content\":\"<ol><li>Api Integration<\\/li><li>Authentication error<\\/li><li>Javascript Issue<\\/li><li>Listing\\/Creation\\/Editing\\/Deletion Issue<\\/li><li>UI\\/UX Issue<\\/li><li>Website Loading issue<\\/li><li>Data Overflow<\\/li><li>Payment Getaway issue<\\/li><li>Any broken url<\\/li><li>Email\\/Messaging\\/Verification issue<\\/li><\\/ol><p>&nbsp;In addition to Laravel, I offer expertise in WordPress and Shopify, providing custom design, theme customization, and full development services for responsive, user-friendly sites. Dedicated to delivering quality work and exceptional customers.<\\/p>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"seo_meta_image\":null,\"status\":\"published\",\"is_featured\":\"0\",\"image\":null,\"icon\":\"ti ti-bug-filled\",\"submitter\":\"apply\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '127.0.0.1', 1, 7, 'Bug fixing', 'primary', '2024-12-17 09:53:53', '2024-12-17 09:53:53'),
(40, 1, 'service', '{\"category_id\":\"5\",\"name\":\"Bug fixing\",\"model\":\"Botble\\\\Portfolio\\\\Models\\\\Service\",\"slug\":\"bug-fixing\",\"slug_id\":\"50\",\"is_slug_editable\":\"1\",\"description\":\"specialize in custom Laravel applications, bug fixing, and seamless server deployment, ensuring that your projects are functional, efficient, and reliable.\",\"content\":\"<ol><li>Api Integration<\\/li><li>Authentication error<\\/li><li>Javascript Issue<\\/li><li>Listing\\/Creation\\/Editing\\/Deletion Issue<\\/li><li>UI\\/UX Issue<\\/li><li>Website Loading issue<\\/li><li>Data Overflow<\\/li><li>Payment Getaway issue<\\/li><li>Any broken url<\\/li><li>Email\\/Messaging\\/Verification issue<\\/li><\\/ol><p>&nbsp;In addition to Laravel, I offer expertise in WordPress and Shopify, providing custom design, theme customization, and full development services for responsive, user-friendly sites. Dedicated to delivering quality work and exceptional customers.<\\/p>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"seo_meta_image\":null,\"status\":\"published\",\"is_featured\":\"0\",\"image\":null,\"icon\":\"ti ti-bug-filled\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '127.0.0.1', 1, 7, 'Bug fixing', 'primary', '2024-12-17 09:55:14', '2024-12-17 09:55:14'),
(41, 1, 'service', '{\"category_id\":\"5\",\"name\":\"Bug fixing\",\"model\":\"Botble\\\\Portfolio\\\\Models\\\\Service\",\"slug\":\"bug-fixing\",\"slug_id\":\"50\",\"is_slug_editable\":\"1\",\"description\":\"specialize in custom Laravel applications, bug fixing, and seamless server deployment, ensuring that your projects are functional, efficient, and reliable.\",\"content\":\"<ol><li>Api Integration<\\/li><li>Authentication error<\\/li><li>Javascript Issue<\\/li><li>Listing\\/Creation\\/Editing\\/Deletion Issue<\\/li><li>UI\\/UX Issue<\\/li><li>Website Loading issue<\\/li><li>Data Overflow<\\/li><li>Payment Getaway issue<\\/li><li>Any broken url<\\/li><li>Email\\/Messaging\\/Verification issue<\\/li><\\/ol><p>&nbsp;In addition to Laravel, I offer expertise in WordPress and Shopify, providing custom design, theme customization, and full development services for responsive, user-friendly sites. Dedicated to delivering quality work and exceptional customers.<\\/p>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"seo_meta_image\":null,\"status\":\"published\",\"is_featured\":\"0\",\"image\":null,\"icon\":\"ti ti-bug\",\"submitter\":\"apply\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '127.0.0.1', 1, 7, 'Bug fixing', 'primary', '2024-12-17 09:55:50', '2024-12-17 09:55:50'),
(42, 1, 'service', '{\"category_id\":\"5\",\"name\":\"Bug fixing\",\"model\":\"Botble\\\\Portfolio\\\\Models\\\\Service\",\"slug\":\"bug-fixing\",\"slug_id\":\"50\",\"is_slug_editable\":\"1\",\"description\":\"specialize in custom Laravel applications, bug fixing, and seamless server deployment, ensuring that your projects are functional, efficient, and reliable.\",\"content\":\"<ol><li>Api Integration<\\/li><li>Authentication error<\\/li><li>Javascript Issue<\\/li><li>Listing\\/Creation\\/Editing\\/Deletion Issue<\\/li><li>UI\\/UX Issue<\\/li><li>Website Loading issue<\\/li><li>Data Overflow<\\/li><li>Payment Getaway issue<\\/li><li>Any broken url<\\/li><li>Email\\/Messaging\\/Verification issue<\\/li><\\/ol><p>&nbsp;In addition to Laravel, I offer expertise in WordPress and Shopify, providing custom design, theme customization, and full development services for responsive, user-friendly sites. Dedicated to delivering quality work and exceptional customers.<\\/p>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"seo_meta_image\":null,\"status\":\"published\",\"is_featured\":\"0\",\"image\":null,\"icon\":\"ti ti-adjustments-bolt\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '127.0.0.1', 1, 7, 'Bug fixing', 'primary', '2024-12-17 09:56:16', '2024-12-17 09:56:16'),
(43, 1, 'service', '{\"category_id\":\"5\",\"name\":\"Bug fixing\",\"model\":\"Botble\\\\Portfolio\\\\Models\\\\Service\",\"slug\":\"bug-fixing\",\"slug_id\":\"50\",\"is_slug_editable\":\"1\",\"description\":\"specialize in custom Laravel applications, bug fixing, and seamless server deployment\",\"content\":\"<ol><li>Api Integration<\\/li><li>Authentication error<\\/li><li>Javascript Issue<\\/li><li>Listing\\/Creation\\/Editing\\/Deletion Issue<\\/li><li>UI\\/UX Issue<\\/li><li>Website Loading issue<\\/li><li>Data Overflow<\\/li><li>Payment Getaway issue<\\/li><li>Any broken url<\\/li><li>Email\\/Messaging\\/Verification issue<\\/li><\\/ol><p>Ensuring that your projects are functional, efficient, and reliable. In addition to Laravel, I offer expertise in WordPress and Shopify, providing custom design, theme customization, and full development services for responsive, user-friendly sites. Dedicated to delivering quality work and exceptional customers.<\\/p>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"seo_meta_image\":null,\"status\":\"published\",\"is_featured\":\"0\",\"image\":null,\"icon\":\"ti ti-adjustments-bolt\",\"submitter\":\"apply\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '127.0.0.1', 1, 7, 'Bug fixing', 'primary', '2024-12-17 09:57:04', '2024-12-17 09:57:04'),
(44, 1, 'service', '{\"category_id\":\"1\",\"name\":\"API Development\",\"model\":\"Botble\\\\Portfolio\\\\Models\\\\Service\",\"slug\":\"api-development\",\"slug_id\":\"33\",\"is_slug_editable\":\"1\",\"description\":\"Designing and developing scalable RESTful APIs for web and mobile applications.\",\"content\":\"<h5 class=\\\"fs-5 fw-medium\\\">Description<\\/h5><p class=\\\"text-300\\\">Travila is a comprehensive travel booking app designed to provide users with a seamless and enjoyable booking experience. The project involved creating an intuitive and visually appealing user interface, ensuring that users can effortlessly book flights, hotels, and car rentals all within a single app. The primary goal was to enhance the overall user experience, making travel planning easy and enjoyable.<\\/p><h5 class=\\\"fs-5 fw-medium mt-4\\\">Key Features<\\/h5><ul><li><p class=\\\"text-dark fw-bold\\\">User-Centric Interface: <span class=\\\"text-300 fw-medium\\\">Designed a clean and intuitive interface that allows users to navigate through the app with ease, ensuring a smooth and enjoyable booking process.<\\/span><\\/p><\\/li><li><p class=\\\"text-dark fw-bold\\\">Integrated Search and Booking: <span class=\\\"text-300 fw-medium\\\">Developed an integrated search function that enables users to find and book flights, hotels, and car rentals quickly and efficiently.<\\/span><\\/p><\\/li><li><p class=\\\"text-dark fw-bold\\\">Personalized Recommendations: <span class=\\\"text-300 fw-medium\\\">Implemented a recommendation system that suggests destinations, accommodations, and activities based on user preferences and past behaviors.<\\/span><\\/p><\\/li><li><p class=\\\"text-dark fw-bold\\\">Secure Payment Gateway: <span class=\\\"text-300 fw-medium\\\">Integrated a secure payment gateway to ensure that all transactions <\\/span><span class=\\\"text-300 fw-medium text-dark fw-bold\\\">are safe and user data is protected.<\\/span><span class=\\\"text-300 fw-medium\\\">&nbsp;<\\/span><\\/p><\\/li><li><p class=\\\"text-dark fw-bold\\\">Interactive Maps: <span class=\\\"text-300 fw-medium\\\">Added interactive maps to help users explore destinations, find nearby attractions, and get directions.<\\/span><\\/p><\\/li><\\/ul><h5 class=\\\"fs-5 fw-medium mt-4\\\">Technologies Used<\\/h5><ul><li><p class=\\\"text-dark fw-bold\\\">Front-End: <span class=\\\"text-300 fw-medium\\\">React Native for cross-platform mobile development, ensuring a consistent experience on both iOS and Android devices.<\\/span><\\/p><\\/li><li><p class=\\\"text-dark fw-bold\\\">Back-End: <span class=\\\"text-300 fw-medium\\\">Node.js and Express for handling server-side logic and database interactions.<\\/span><\\/p><\\/li><li><p class=\\\"text-dark fw-bold\\\">Database: <span class=\\\"text-300 fw-medium\\\">MongoDB for flexible data storage and retrieval.<\\/span><\\/p><\\/li><li><p class=\\\"text-dark fw-bold\\\">APIs: <span class=\\\"text-300 fw-medium\\\">Integrated third-party APIs for flight, hotel, and car rental bookings to provide a wide range of options to users.<\\/span><\\/p><\\/li><li><p class=\\\"text-dark fw-bold\\\">Payment Integration: <span class=\\\"text-300 fw-medium\\\">Stripe API for secure and reliable payment processing.<\\/span><\\/p><\\/li><\\/ul><h5 class=\\\"fs-5 fw-medium mt-4\\\">Design Highlights<\\/h5><ul><li><p class=\\\"text-dark fw-bold\\\">Visual Appeal: <span class=\\\"text-300 fw-medium\\\">Focused on a visually appealing design with high-quality images and a modern color palette to enhance user engagement.<\\/span><\\/p><\\/li><li><p class=\\\"text-dark fw-bold\\\">Usability: <span class=\\\"text-300 fw-medium\\\">Ensured the app is user-friendly with clear icons, concise labels, and a straightforward navigation structure.<\\/span><\\/p><\\/li><li><p class=\\\"text-dark fw-bold\\\">Responsive Design: <span class=\\\"text-300 fw-medium\\\">Made the app responsive to different screen sizes and orientations, providing a consistent user experience across various devices.<\\/span><\\/p><\\/li><\\/ul>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"seo_meta_image\":null,\"status\":\"published\",\"is_featured\":\"0\",\"image\":\"api.webp\",\"icon\":\"ti ti-api\",\"submitter\":\"apply\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'API Development', 'primary', '2024-12-17 09:58:22', '2024-12-17 09:58:22'),
(45, 1, 'page', '{\"name\":\"Home\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"slug\":\"http:\\/\\/127.0.0.1:8000\",\"description\":null,\"content\":\"<shortcode>[hero-banner style=\\\"2\\\" title=\\\"Senior &lt;span&gt;{Full Stack}&lt;\\/span&gt;Web &amp; App developer\\\" subtitle=\\\"Hey,I\'m Rahman Tutul\\\" description=\\\"With expertise in cutting-edge technologies such as &lt;span&gt;PHP&lt;\\/span&gt;, &lt;span&gt;ReactJs&lt;\\/span&gt;, &lt;span&gt;MySql&lt;\\/span&gt;, and &lt;span&gt;Laravel&lt;\\/span&gt;... I deliver web solutions that are both innovative and robust.\\\" primary_button_text=\\\"Download My CV\\\" primary_button_link=\\\"\\/storage\\/main\\/resume\\/cv.pdf\\\" primary_button_icon=\\\"ti ti-download\\\" below_button_text=\\\"...and more\\\" quantity=\\\"5\\\" name_1=\\\"PHP\\\" image_1=\\\"11-118738-php-logo-png-circle-transparent-png.png\\\" name_2=\\\"JavaScript\\\" image_2=\\\"4.png\\\" name_3=\\\"MySql\\\" image_3=\\\"pngtree-mysql-database-service-code-coding-png-image-5289143.png\\\" name_4=\\\"ReactJs\\\" image_4=\\\"react-icon-512x512-u6e60ayf.png\\\" name_5=\\\"Tailwind CSS\\\" image_5=\\\"5.png\\\" background_image=\\\"code\\/general\\/hero-bg.png\\\" background_image_dark=\\\"code\\/general\\/hero-bg-dark.png\\\" right_image=\\\"people.png\\\" right_image_shape=\\\"code\\/general\\/people-shape.png\\\" enable_lazy_loading=\\\"no\\\"][\\/hero-banner]<\\/shortcode><shortcode>[stats-counter style=\\\"2\\\" quantity=\\\"4\\\" label_1=\\\"Years Experience\\\" count_1=\\\"2\\\" icon_1=\\\"ti ti-crown\\\" label_2=\\\"Projects Completed\\\" count_2=\\\"15\\\" icon_2=\\\"ti ti-device-desktop\\\" label_3=\\\"On going\\\" count_3=\\\"2\\\" icon_3=\\\"ti ti-heart-spark\\\" label_4=\\\"Technologies\\\" count_4=\\\"6\\\" icon_4=\\\"ti ti-3d-rotate\\\" background_image=\\\"code\\/general\\/static-bg.png\\\" enable_lazy_loading=\\\"no\\\"][\\/stats-counter]<\\/shortcode><shortcode>[projects style=\\\"2\\\" title=\\\"My Recent Works\\\" subtitle=\\\"Projects\\\" project_ids=\\\"1,2,3,4\\\" background_image=\\\"code\\/general\\/projects-bg.png\\\" enable_lazy_loading=\\\"yes\\\"][\\/projects]<\\/shortcode><shortcode>[services style=\\\"2\\\" title=\\\"Designing solutions &lt;span class=\'text-300\'&gt;customized&lt;br&gt;to meet your requirements&lt;\\/span&gt;\\\" subtitle=\\\"Cooperation\\\" service_ids=\\\"1,2,3,5,6,7\\\" bottom_text=\\\"Excited to take on &lt;span class=\'text-dark\'&gt;new projects&lt;\\/span&gt; and collaborate. &lt;br&gt;Let\'s chat about your ideas. &lt;a href=\'\' class=\'text-primary-2\'&gt;Reach out!&lt;\\/a&gt;\\\" enable_lazy_loading=\\\"yes\\\"][\\/services]<\\/shortcode><shortcode>[experience title=\\\"+12 &lt;span&gt;years of&lt;\\/span&gt; passion &lt;span&gt;for &lt;br \\/&gt; programming techniques&lt;\\/span&gt;\\\" subtitle=\\\"Experience\\\" role_title=\\\"Senior Software Engineer\\\" role_description=\\\"Led development of scalable web applications, &lt;span&gt;improving performance&lt;\\/span&gt; and user experience for millions of users. \\\\n Implemented machine learning algorithms to enhance search functionality. \\\\n Collaborated with cross-functional teams to integrate new features seamlessly.\\\" experiences_quantity=\\\"4\\\" experiences_date_1=\\\"2018 - Present\\\" experiences_title_1=\\\"Google\\\" experiences_logo_1=\\\"code\\/experiences\\/google.png\\\" experiences_date_2=\\\"2012 - 2015\\\" experiences_title_2=\\\"Twitter (X)\\\" experiences_logo_2=\\\"code\\/experiences\\/x.png\\\" experiences_date_3=\\\"2018 - Present\\\" experiences_title_3=\\\"Amazon\\\" experiences_logo_3=\\\"code\\/experiences\\/amazon.png\\\" experiences_date_4=\\\"2010 - 2012\\\" experiences_title_4=\\\"Paypal\\\" experiences_logo_4=\\\"code\\/experiences\\/paypal.png\\\" skills_quantity=\\\"5\\\" skills_name_1=\\\"Python\\\" skills_name_2=\\\"TensorFlow\\\" skills_name_3=\\\"Angular\\\" skills_name_4=\\\"Kubernetes\\\" skills_name_5=\\\"GCP\\\" background_image=\\\"code\\/general\\/services-bg.png\\\" enable_lazy_loading=\\\"yes\\\"][\\/experience]<\\/shortcode><shortcode>[resume style=\\\"2\\\" resume_1_title=\\\"Education\\\" resume_1_title_icon=\\\"ti ti-school\\\" resume_1_quantity=\\\"4\\\" resume_1_time_1=\\\"2018 - 2019\\\" resume_1_title_1=\\\"Certification in UX Design\\\" resume_1_subtitle_1=\\\"University of Stanford\\\" resume_1_time_2=\\\"2017 - 2018\\\" resume_1_title_2=\\\"Certification in Web Dev\\\" resume_1_subtitle_2=\\\"University of Stanford\\\" resume_1_time_3=\\\"2014 - 2016\\\" resume_1_title_3=\\\"Advanced UX\\/UI Bootcamp\\\" resume_1_subtitle_3=\\\"Design Academy\\\" resume_1_time_4=\\\"2012 - 2013\\\" resume_1_title_4=\\\"Certification in Graphic Design\\\" resume_1_subtitle_4=\\\"Coursera\\\" resume_2_title=\\\"Experience\\\" resume_2_title_icon=\\\"ti ti-stars\\\" resume_2_quantity=\\\"4\\\" resume_2_time_1=\\\"2019 - Present\\\" resume_2_title_1=\\\"Senior UI\\/UX Designer\\\" resume_2_subtitle_1=\\\"Leader in Creative team\\\" resume_2_time_2=\\\"2016 - 2019\\\" resume_2_title_2=\\\"UI\\/UX Designer\\\" resume_2_subtitle_2=\\\"Tech Startup\\\" resume_2_time_3=\\\"2014 - 2016\\\" resume_2_title_3=\\\"Freelance UI\\/UX Designer\\\" resume_2_subtitle_3=\\\"Self-Employed\\\" resume_2_time_4=\\\"2012 - 2014\\\" resume_2_title_4=\\\"Junior UI Designer\\\" resume_2_subtitle_4=\\\"Web Solutions team\\\" enable_lazy_loading=\\\"yes\\\"][\\/resume]<\\/shortcode><shortcode>[skills style=\\\"2\\\" title=\\\"My Skills\\\" subtitle=\\\"Projects\\\" quantity=\\\"9\\\" name_1=\\\"Next.js\\\" image_1=\\\"code\\/skills\\/1.png\\\" name_2=\\\"Firebase\\\" image_2=\\\"code\\/skills\\/2.png\\\" name_3=\\\"MongoDB\\\" image_3=\\\"code\\/skills\\/3.png\\\" name_4=\\\"Node.js\\\" image_4=\\\"code\\/skills\\/4.png\\\" name_5=\\\"Tailwind CSS\\\" image_5=\\\"code\\/skills\\/5.png\\\" name_6=\\\"React\\\" image_6=\\\"code\\/skills\\/6.png\\\" name_7=\\\"Vue.js\\\" image_7=\\\"code\\/skills\\/7.png\\\" name_8=\\\"Angular\\\" image_8=\\\"code\\/skills\\/8.png\\\" name_9=\\\"Laravel\\\" image_9=\\\"code\\/skills\\/9.png\\\" list_quantity=\\\"5\\\" list_label_1=\\\"Front-End\\\" list_content_1=\\\"HTML, CSS, JavaScript, React, Angular\\\" list_label_2=\\\"Back-End\\\" list_content_2=\\\"Node.js, Express, Python, Django\\\" list_label_3=\\\"Databases\\\" list_content_3=\\\"MySQL, PostgreSQL, MongoDB\\\" list_label_4=\\\"Tools &amp; Platforms\\\" list_content_4=\\\"Git, Docker, AWS, Heroku\\\" list_label_5=\\\"Others\\\" list_content_5=\\\"RESTful APIs, GraphQL, Agile Methodologies\\\" enable_lazy_loading=\\\"yes\\\"][\\/skills]<\\/shortcode><shortcode>[blog-posts style=\\\"2\\\" paginate=\\\"3\\\" title=\\\"Recent blog\\\" subtitle=\\\"Latest Posts\\\" enable_lazy_loading=\\\"yes\\\"][\\/blog-posts]<\\/shortcode><shortcode>[contact-form style=\\\"2\\\" display_fields=\\\"phone,email,subject,address\\\" mandatory_fields=\\\"email,subject\\\" title=\\\"Let\'s connect\\\" quantity=\\\"4\\\" label_1=\\\"Phone\\\" content_1=\\\"+1-234-567-8901\\\" icon_1=\\\"ti ti-phone\\\" url_1=\\\"tel:+1-234-567-8901\\\" label_2=\\\"Email\\\" content_2=\\\"contact@botble.com\\\" icon_2=\\\"ti ti-mail\\\" url_2=\\\"mailto:contact@botble.com\\\" label_3=\\\"X (Twitter)\\\" content_3=\\\"Botble Technologies\\\" icon_3=\\\"ti ti-user\\\" url_3=\\\"https:\\/\\/x.com\\/botble\\\" label_4=\\\"Address\\\" content_4=\\\"0811 Erdman Prairie, Joaville CA\\\" icon_4=\\\"ti ti-map\\\" url_4=\\\"https:\\/\\/google.com\\/maps\\\"][\\/contact-form]<\\/shortcode>\",\"submitter\":\"apply\",\"status\":\"published\",\"template\":\"default\",\"image\":\"257611305-391568315912249-333814.png\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'Home', 'primary', '2024-12-17 10:01:54', '2024-12-17 10:01:54');
INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(46, 1, 'page', '{\"name\":\"Home\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"slug\":\"http:\\/\\/127.0.0.1:8000\",\"description\":null,\"content\":\"<shortcode>[hero-banner style=\\\"2\\\" title=\\\"Senior &lt;span&gt;{Full Stack}&lt;\\/span&gt;Web &amp; App developer\\\" subtitle=\\\"Hey,I\'m Rahman Tutul\\\" description=\\\"With expertise in cutting-edge technologies such as &lt;span&gt;PHP&lt;\\/span&gt;, &lt;span&gt;ReactJs&lt;\\/span&gt;, &lt;span&gt;MySql&lt;\\/span&gt;, and &lt;span&gt;Laravel&lt;\\/span&gt;... I deliver web solutions that are both innovative and robust.\\\" primary_button_text=\\\"Download My CV\\\" primary_button_link=\\\"\\/storage\\/main\\/resume\\/cv.pdf\\\" primary_button_icon=\\\"ti ti-download\\\" below_button_text=\\\"...and more\\\" quantity=\\\"5\\\" name_1=\\\"PHP\\\" image_1=\\\"11-118738-php-logo-png-circle-transparent-png.png\\\" name_2=\\\"JavaScript\\\" image_2=\\\"4.png\\\" name_3=\\\"MySql\\\" image_3=\\\"pngtree-mysql-database-service-code-coding-png-image-5289143.png\\\" name_4=\\\"ReactJs\\\" image_4=\\\"react-icon-512x512-u6e60ayf.png\\\" name_5=\\\"Tailwind CSS\\\" image_5=\\\"5.png\\\" background_image=\\\"code\\/general\\/hero-bg.png\\\" background_image_dark=\\\"code\\/general\\/hero-bg-dark.png\\\" right_image=\\\"people.png\\\" right_image_shape=\\\"code\\/general\\/people-shape.png\\\" enable_lazy_loading=\\\"no\\\"][\\/hero-banner]<\\/shortcode><shortcode>[stats-counter style=\\\"2\\\" quantity=\\\"4\\\" label_1=\\\"Years Experience\\\" count_1=\\\"2\\\" icon_1=\\\"ti ti-crown\\\" label_2=\\\"Projects Completed\\\" count_2=\\\"15\\\" icon_2=\\\"ti ti-device-desktop\\\" label_3=\\\"On going\\\" count_3=\\\"2\\\" icon_3=\\\"ti ti-heart-spark\\\" label_4=\\\"Technologies\\\" count_4=\\\"6\\\" icon_4=\\\"ti ti-3d-rotate\\\" background_image=\\\"code\\/general\\/static-bg.png\\\" enable_lazy_loading=\\\"no\\\"][\\/stats-counter]<\\/shortcode><shortcode>[services style=\\\"2\\\" title=\\\"Designing solutions &lt;span class=\'text-300\'&gt;customized&lt;br&gt;to meet your requirements&lt;\\/span&gt;\\\" subtitle=\\\"Cooperation\\\" service_ids=\\\"1,2,3,5,6,7\\\" bottom_text=\\\"Excited to take on &lt;span class=\'text-dark\'&gt;new projects&lt;\\/span&gt; and collaborate. &lt;br&gt;Let\'s chat about your ideas. &lt;a href=\'\' class=\'text-primary-2\'&gt;Reach out!&lt;\\/a&gt;\\\" enable_lazy_loading=\\\"yes\\\"][\\/services]<\\/shortcode><shortcode>[projects style=\\\"2\\\" title=\\\"My Recent Works\\\" subtitle=\\\"Projects\\\" project_ids=\\\"1,2,3,4\\\" background_image=\\\"code\\/general\\/projects-bg.png\\\" enable_lazy_loading=\\\"yes\\\"][\\/projects]<\\/shortcode><shortcode>[experience title=\\\"+12 &lt;span&gt;years of&lt;\\/span&gt; passion &lt;span&gt;for &lt;br \\/&gt; programming techniques&lt;\\/span&gt;\\\" subtitle=\\\"Experience\\\" role_title=\\\"Senior Software Engineer\\\" role_description=\\\"Led development of scalable web applications, &lt;span&gt;improving performance&lt;\\/span&gt; and user experience for millions of users. \\\\n Implemented machine learning algorithms to enhance search functionality. \\\\n Collaborated with cross-functional teams to integrate new features seamlessly.\\\" experiences_quantity=\\\"4\\\" experiences_date_1=\\\"2018 - Present\\\" experiences_title_1=\\\"Google\\\" experiences_logo_1=\\\"code\\/experiences\\/google.png\\\" experiences_date_2=\\\"2012 - 2015\\\" experiences_title_2=\\\"Twitter (X)\\\" experiences_logo_2=\\\"code\\/experiences\\/x.png\\\" experiences_date_3=\\\"2018 - Present\\\" experiences_title_3=\\\"Amazon\\\" experiences_logo_3=\\\"code\\/experiences\\/amazon.png\\\" experiences_date_4=\\\"2010 - 2012\\\" experiences_title_4=\\\"Paypal\\\" experiences_logo_4=\\\"code\\/experiences\\/paypal.png\\\" skills_quantity=\\\"5\\\" skills_name_1=\\\"Python\\\" skills_name_2=\\\"TensorFlow\\\" skills_name_3=\\\"Angular\\\" skills_name_4=\\\"Kubernetes\\\" skills_name_5=\\\"GCP\\\" background_image=\\\"code\\/general\\/services-bg.png\\\" enable_lazy_loading=\\\"yes\\\"][\\/experience]<\\/shortcode><shortcode>[resume style=\\\"2\\\" resume_1_title=\\\"Education\\\" resume_1_title_icon=\\\"ti ti-school\\\" resume_1_quantity=\\\"4\\\" resume_1_time_1=\\\"2018 - 2019\\\" resume_1_title_1=\\\"Certification in UX Design\\\" resume_1_subtitle_1=\\\"University of Stanford\\\" resume_1_time_2=\\\"2017 - 2018\\\" resume_1_title_2=\\\"Certification in Web Dev\\\" resume_1_subtitle_2=\\\"University of Stanford\\\" resume_1_time_3=\\\"2014 - 2016\\\" resume_1_title_3=\\\"Advanced UX\\/UI Bootcamp\\\" resume_1_subtitle_3=\\\"Design Academy\\\" resume_1_time_4=\\\"2012 - 2013\\\" resume_1_title_4=\\\"Certification in Graphic Design\\\" resume_1_subtitle_4=\\\"Coursera\\\" resume_2_title=\\\"Experience\\\" resume_2_title_icon=\\\"ti ti-stars\\\" resume_2_quantity=\\\"4\\\" resume_2_time_1=\\\"2019 - Present\\\" resume_2_title_1=\\\"Senior UI\\/UX Designer\\\" resume_2_subtitle_1=\\\"Leader in Creative team\\\" resume_2_time_2=\\\"2016 - 2019\\\" resume_2_title_2=\\\"UI\\/UX Designer\\\" resume_2_subtitle_2=\\\"Tech Startup\\\" resume_2_time_3=\\\"2014 - 2016\\\" resume_2_title_3=\\\"Freelance UI\\/UX Designer\\\" resume_2_subtitle_3=\\\"Self-Employed\\\" resume_2_time_4=\\\"2012 - 2014\\\" resume_2_title_4=\\\"Junior UI Designer\\\" resume_2_subtitle_4=\\\"Web Solutions team\\\" enable_lazy_loading=\\\"yes\\\"][\\/resume]<\\/shortcode><shortcode>[skills style=\\\"2\\\" title=\\\"My Skills\\\" subtitle=\\\"Projects\\\" quantity=\\\"9\\\" name_1=\\\"Next.js\\\" image_1=\\\"code\\/skills\\/1.png\\\" name_2=\\\"Firebase\\\" image_2=\\\"code\\/skills\\/2.png\\\" name_3=\\\"MongoDB\\\" image_3=\\\"code\\/skills\\/3.png\\\" name_4=\\\"Node.js\\\" image_4=\\\"code\\/skills\\/4.png\\\" name_5=\\\"Tailwind CSS\\\" image_5=\\\"code\\/skills\\/5.png\\\" name_6=\\\"React\\\" image_6=\\\"code\\/skills\\/6.png\\\" name_7=\\\"Vue.js\\\" image_7=\\\"code\\/skills\\/7.png\\\" name_8=\\\"Angular\\\" image_8=\\\"code\\/skills\\/8.png\\\" name_9=\\\"Laravel\\\" image_9=\\\"code\\/skills\\/9.png\\\" list_quantity=\\\"5\\\" list_label_1=\\\"Front-End\\\" list_content_1=\\\"HTML, CSS, JavaScript, React, Angular\\\" list_label_2=\\\"Back-End\\\" list_content_2=\\\"Node.js, Express, Python, Django\\\" list_label_3=\\\"Databases\\\" list_content_3=\\\"MySQL, PostgreSQL, MongoDB\\\" list_label_4=\\\"Tools &amp; Platforms\\\" list_content_4=\\\"Git, Docker, AWS, Heroku\\\" list_label_5=\\\"Others\\\" list_content_5=\\\"RESTful APIs, GraphQL, Agile Methodologies\\\" enable_lazy_loading=\\\"yes\\\"][\\/skills]<\\/shortcode><shortcode>[blog-posts style=\\\"2\\\" paginate=\\\"3\\\" title=\\\"Recent blog\\\" subtitle=\\\"Latest Posts\\\" enable_lazy_loading=\\\"yes\\\"][\\/blog-posts]<\\/shortcode><shortcode>[contact-form style=\\\"2\\\" display_fields=\\\"phone,email,subject,address\\\" mandatory_fields=\\\"email,subject\\\" title=\\\"Let\'s connect\\\" quantity=\\\"4\\\" label_1=\\\"Phone\\\" content_1=\\\"+1-234-567-8901\\\" icon_1=\\\"ti ti-phone\\\" url_1=\\\"tel:+1-234-567-8901\\\" label_2=\\\"Email\\\" content_2=\\\"contact@botble.com\\\" icon_2=\\\"ti ti-mail\\\" url_2=\\\"mailto:contact@botble.com\\\" label_3=\\\"X (Twitter)\\\" content_3=\\\"Botble Technologies\\\" icon_3=\\\"ti ti-user\\\" url_3=\\\"https:\\/\\/x.com\\/botble\\\" label_4=\\\"Address\\\" content_4=\\\"0811 Erdman Prairie, Joaville CA\\\" icon_4=\\\"ti ti-map\\\" url_4=\\\"https:\\/\\/google.com\\/maps\\\"][\\/contact-form]<\\/shortcode>\",\"submitter\":\"apply\",\"status\":\"published\",\"template\":\"default\",\"image\":\"257611305-391568315912249-333814.png\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'Home', 'primary', '2024-12-17 10:02:30', '2024-12-17 10:02:30'),
(47, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '127.0.0.1', 0, 1, 'Rahman Tutul', 'info', '2024-12-18 09:02:53', '2024-12-18 09:02:53'),
(48, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '127.0.0.1', 0, 1, 'Rahman Tutul', 'info', '2025-01-10 00:25:09', '2025-01-10 00:25:09'),
(49, 1, 'project', '{\"name\":\"Full functional ERP system\",\"model\":\"Botble\\\\Portfolio\\\\Models\\\\Project\",\"slug\":\"cloud-infrastructure-setup\",\"slug_id\":\"42\",\"is_slug_editable\":\"1\",\"description\":\"Full functional ERP System including HRM, CRM, Inventory, Accounts\",\"content\":\"<div class=\\\"flex max-w-full flex-col flex-grow\\\"><div class=\\\"min-h-8 text-message flex w-full flex-col items-end gap-2 whitespace-normal break-words text-start [.text-message+&amp;]:mt-5\\\" data-message-author-role=\\\"assistant\\\" data-message-id=\\\"bef9e1cf-78a5-4544-947a-3f66919f4b92\\\" dir=\\\"auto\\\" data-message-model-slug=\\\"gpt-4o\\\"><div class=\\\"flex w-full flex-col gap-1 empty:hidden first:pt-[3px]\\\"><div class=\\\"markdown prose w-full break-words dark:prose-invert dark\\\"><p><strong>ERP<\\/strong> is a robust and comprehensive Enterprise Resource Planning (ERP) system designed to streamline and automate business operations across various departments. The project focused on creating a user-friendly and highly customizable platform to help businesses improve efficiency, make data-driven decisions, and achieve organizational goals. The system integrates essential modules such as inventory, sales, finance, human resources, and customer relationship management into a unified platform.<\\/p><h3><strong>Key Features<\\/strong><\\/h3><ul><li><strong>Centralized Dashboard<\\/strong>: Designed an intuitive and centralized dashboard that provides a real-time overview of key business metrics, enabling quick and informed decision-making.<\\/li><li><strong>Modular Architecture<\\/strong>: Developed a flexible, modular system that allows businesses to enable or disable features based on their unique requirements.<\\/li><li><strong>Inventory Management<\\/strong>: Implemented an inventory module for tracking stock levels, automating reorders, and generating reports to minimize wastage and overstocking.<\\/li><li><strong>Finance &amp; Accounting<\\/strong>: Integrated financial tools for budget planning, expense tracking, payroll processing, and generating detailed financial reports.<\\/li><li><strong>Sales and CRM<\\/strong>: Created a sales and CRM module to manage leads, track customer interactions, and monitor sales pipelines effectively.<\\/li><li><strong>Human Resource Management<\\/strong>: Added an HR module for employee management, attendance tracking, leave requests, and payroll integration.<\\/li><li><strong>Role-Based Access Control<\\/strong>: Implemented secure access controls, ensuring that only authorized users can view or edit sensitive data.<\\/li><li><strong>Data Analytics<\\/strong>: Embedded advanced reporting and analytics to provide actionable insights and improve operational efficiency.<\\/li><\\/ul><h3><strong>Technologies Used<\\/strong><\\/h3><ul><li><strong>Front-End<\\/strong>: React.js for a modern and responsive user interface, ensuring seamless navigation and interaction.<\\/li><li><strong>Back-End<\\/strong>: Laravel for robust server-side processing and API development.<\\/li><li><strong>Database<\\/strong>: MySQL for structured and reliable data storage.<\\/li><li><strong>APIs<\\/strong>: Integrated third-party APIs for enhanced functionality, such as tax calculations, payment gateways, and email notifications.<\\/li><li><strong>Cloud Hosting<\\/strong>: cPanel for scalability and reliable performance.<\\/li><\\/ul><h3><strong>Design Highlights<\\/strong><\\/h3><ul><li><strong>User-Focused Design<\\/strong>: Created a clean and structured interface, prioritizing usability and minimizing the learning curve for new users.<\\/li><li><strong>Customizable Workflow<\\/strong>: Designed the system to accommodate customizable workflows, aligning with diverse business needs.<\\/li><li><strong>Responsive Design<\\/strong>: Ensured compatibility across desktops, tablets, and mobile devices for consistent user experience.<\\/li><li><strong>Data Security<\\/strong>: Followed industry best practices for data encryption, backups, and compliance with GDPR and other data protection regulations.<\\/li><\\/ul><p><strong>ERP<\\/strong> simplifies complex business operations into a cohesive system, helping organizations save time, reduce costs, and drive growth effectively.<\\/p><\\/div><\\/div><\\/div><\\/div>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"seo_meta_image\":null,\"submitter\":\"apply\",\"status\":\"published\",\"is_featured\":\"0\",\"image\":\"capture1.PNG\",\"client\":\"Tech Company\",\"link\":\"https:\\/\\/example.com\\/cloud-infrastructure\",\"start_date\":\"2023-04-20\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '127.0.0.1', 1, 4, 'Full functional ERP system', 'primary', '2025-01-10 00:34:24', '2025-01-10 00:34:24'),
(50, 1, 'project', '{\"name\":\"B2B Business solution For traders\",\"model\":\"Botble\\\\Portfolio\\\\Models\\\\Project\",\"slug\":\"mobile-banking-app\",\"slug_id\":\"41\",\"is_slug_editable\":\"1\",\"description\":\"This is a B2B business communication website\\/\",\"content\":\"<p><strong>Tradevaly Bangladesh<\\/strong> is a dynamic B2B marketplace designed to connect buyers and suppliers across a wide range of industries. This platform facilitates seamless trade by providing a centralized space for businesses to discover, connect, and collaborate. As the developer of this website, the focus was on creating a robust, scalable, and user-friendly solution that enhances the trading experience for businesses in Bangladesh and beyond.<\\/p><h3><strong>Key Features<\\/strong><\\/h3><ul><li><strong>Comprehensive Product Listings<\\/strong>: Designed an organized catalog that allows suppliers to showcase their products with detailed descriptions, images, and pricing, making it easier for buyers to make informed decisions.<\\/li><li><strong>Advanced Search and Filtering<\\/strong>: Implemented a powerful search engine with filters for category, location, price, and supplier ratings, enabling users to find relevant products and suppliers quickly.<\\/li><li><strong>User Management<\\/strong>: Developed a role-based system for managing buyers, sellers, and administrators, ensuring secure access and streamlined operations.<\\/li><li><strong>Supplier Verification<\\/strong>: Integrated a verification system to build trust between buyers and suppliers by ensuring supplier authenticity and reliability.<\\/li><li><strong>Secure Messaging<\\/strong>: Added an in-platform messaging system for secure and efficient communication between buyers and suppliers.<\\/li><li><strong>Order Management<\\/strong>: Provided tools for managing inquiries, placing orders, and tracking transactions seamlessly.<\\/li><li><strong>Responsive Design<\\/strong>: Ensured the platform is fully responsive and optimized for desktops, tablets, and smartphones.<\\/li><li><strong>Multi-Language Support<\\/strong>: Included language options to cater to a diverse user base, improving accessibility and usability.<\\/li><\\/ul><h3><strong>Technologies Used<\\/strong><\\/h3><ul><li><strong>Front-End<\\/strong>: Developed using <strong>HTML CSS<\\/strong> for an interactive and responsive user interface.<\\/li><li><strong>Back-End<\\/strong>: Built on <strong>Laravel<\\/strong>, ensuring robust server-side operations and API development.<\\/li><li><strong>Database<\\/strong>: MySQL for secure and efficient data management.<\\/li><li><strong>Hosting<\\/strong>: Deployed on a cloud-based hosting solution to ensure scalability and reliability.<\\/li><li><strong>APIs<\\/strong>: Integrated third-party APIs for payment processing, shipping, and analytics.<\\/li><\\/ul><h3><strong>Design Highlights<\\/strong><\\/h3><ul><li><strong>User-Friendly Interface<\\/strong>: Focused on creating an intuitive design that allows users to navigate through products and categories effortlessly.<\\/li><li><strong>Professional Aesthetic<\\/strong>: Leveraged modern UI\\/UX principles to ensure the platform\'s design reflects professionalism and trustworthiness.<\\/li><li><strong>Performance Optimization<\\/strong>: Implemented caching, lazy loading, and database optimizations to ensure fast page load times even with high traffic.<\\/li><\\/ul><h3><strong>Impact<\\/strong><\\/h3><p><strong>Tradevaly Bangladesh<\\/strong> empowers businesses to expand their reach, improve trade efficiency, and foster strong partnerships. The platform serves as a bridge between buyers and suppliers, streamlining the trading process and contributing to the growth of B2B commerce in Bangladesh.<\\/p>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"seo_meta_image\":null,\"submitter\":\"apply\",\"status\":\"published\",\"is_featured\":\"1\",\"image\":\"capture2.PNG\",\"client\":\"Finance Company\",\"link\":\"https:\\/\\/example.com\\/mobile-banking\",\"start_date\":\"2022-09-10\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '127.0.0.1', 1, 3, 'B2B Business solution For traders', 'primary', '2025-01-10 00:39:32', '2025-01-10 00:39:32'),
(51, 1, 'project', '{\"name\":\"B2B Business solution For traders\",\"model\":\"Botble\\\\Portfolio\\\\Models\\\\Project\",\"slug\":\"mobile-banking-app\",\"slug_id\":\"41\",\"is_slug_editable\":\"1\",\"description\":\"This is a B2B business communication website\\/\",\"content\":\"<p><strong>Tradevaly Bangladesh<\\/strong> is a dynamic B2B marketplace designed to connect buyers and suppliers across a wide range of industries. This platform facilitates seamless trade by providing a centralized space for businesses to discover, connect, and collaborate. As the developer of this website, the focus was on creating a robust, scalable, and user-friendly solution that enhances the trading experience for businesses in Bangladesh and beyond.<\\/p><h3><strong>Key Features<\\/strong><\\/h3><ul><li><strong>Comprehensive Product Listings<\\/strong>: Designed an organized catalog that allows suppliers to showcase their products with detailed descriptions, images, and pricing, making it easier for buyers to make informed decisions.<\\/li><li><strong>Advanced Search and Filtering<\\/strong>: Implemented a powerful search engine with filters for category, location, price, and supplier ratings, enabling users to find relevant products and suppliers quickly.<\\/li><li><strong>User Management<\\/strong>: Developed a role-based system for managing buyers, sellers, and administrators, ensuring secure access and streamlined operations.<\\/li><li><strong>Supplier Verification<\\/strong>: Integrated a verification system to build trust between buyers and suppliers by ensuring supplier authenticity and reliability.<\\/li><li><strong>Secure Messaging<\\/strong>: Added an in-platform messaging system for secure and efficient communication between buyers and suppliers.<\\/li><li><strong>Order Management<\\/strong>: Provided tools for managing inquiries, placing orders, and tracking transactions seamlessly.<\\/li><li><strong>Responsive Design<\\/strong>: Ensured the platform is fully responsive and optimized for desktops, tablets, and smartphones.<\\/li><li><strong>Multi-Language Support<\\/strong>: Included language options to cater to a diverse user base, improving accessibility and usability.<\\/li><\\/ul><h3><strong>Technologies Used<\\/strong><\\/h3><ul><li><strong>Front-End<\\/strong>: Developed using <strong>HTML CSS<\\/strong> for an interactive and responsive user interface.<\\/li><li><strong>Back-End<\\/strong>: Built on <strong>Laravel<\\/strong>, ensuring robust server-side operations and API development.<\\/li><li><strong>Database<\\/strong>: MySQL for secure and efficient data management.<\\/li><li><strong>Hosting<\\/strong>: Deployed on a cloud-based hosting solution to ensure scalability and reliability.<\\/li><li><strong>APIs<\\/strong>: Integrated third-party APIs for payment processing, shipping, and analytics.<\\/li><\\/ul><h3><strong>Design Highlights<\\/strong><\\/h3><ul><li><strong>User-Friendly Interface<\\/strong>: Focused on creating an intuitive design that allows users to navigate through products and categories effortlessly.<\\/li><li><strong>Professional Aesthetic<\\/strong>: Leveraged modern UI\\/UX principles to ensure the platform\'s design reflects professionalism and trustworthiness.<\\/li><li><strong>Performance Optimization<\\/strong>: Implemented caching, lazy loading, and database optimizations to ensure fast page load times even with high traffic.<\\/li><\\/ul><h3><strong>Impact<\\/strong><\\/h3><p><strong>Tradevaly Bangladesh<\\/strong> empowers businesses to expand their reach, improve trade efficiency, and foster strong partnerships. The platform serves as a bridge between buyers and suppliers, streamlining the trading process and contributing to the growth of B2B commerce in Bangladesh.<\\/p>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"seo_meta_image\":null,\"submitter\":\"apply\",\"status\":\"published\",\"is_featured\":\"1\",\"image\":\"capture2.PNG\",\"client\":\"Finance Company\",\"link\":\"https:\\/\\/tradevaly.com.bd\\/\",\"start_date\":\"2022-09-10\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '127.0.0.1', 1, 3, 'B2B Business solution For traders', 'primary', '2025-01-10 00:40:35', '2025-01-10 00:40:35'),
(52, 1, 'project', '{\"name\":\"Full functional ERP system\",\"model\":\"Botble\\\\Portfolio\\\\Models\\\\Project\",\"slug\":\"cloud-infrastructure-setup\",\"slug_id\":\"42\",\"is_slug_editable\":\"1\",\"description\":\"Full functional ERP System including HRM, CRM, Inventory, Accounts\",\"content\":\"<div class=\\\"flex max-w-full flex-col flex-grow\\\"><div class=\\\"min-h-8 text-message flex w-full flex-col items-end gap-2 whitespace-normal break-words text-start [.text-message+&amp;]:mt-5\\\"><div class=\\\"flex w-full flex-col gap-1 empty:hidden first:pt-[3px]\\\"><div class=\\\"markdown prose w-full break-words dark:prose-invert dark\\\"><p><strong>ERP<\\/strong> is a robust and comprehensive Enterprise Resource Planning (ERP) system designed to streamline and automate business operations across various departments. The project focused on creating a user-friendly and highly customizable platform to help businesses improve efficiency, make data-driven decisions, and achieve organizational goals. The system integrates essential modules such as inventory, sales, finance, human resources, and customer relationship management into a unified platform.<\\/p><h3><strong>Key Features<\\/strong><\\/h3><ul><li><strong>Centralized Dashboard<\\/strong>: Designed an intuitive and centralized dashboard that provides a real-time overview of key business metrics, enabling quick and informed decision-making.<\\/li><li><strong>Modular Architecture<\\/strong>: Developed a flexible, modular system that allows businesses to enable or disable features based on their unique requirements.<\\/li><li><strong>Inventory Management<\\/strong>: Implemented an inventory module for tracking stock levels, automating reorders, and generating reports to minimize wastage and overstocking.<\\/li><li><strong>Finance &amp; Accounting<\\/strong>: Integrated financial tools for budget planning, expense tracking, payroll processing, and generating detailed financial reports.<\\/li><li><strong>Sales and CRM<\\/strong>: Created a sales and CRM module to manage leads, track customer interactions, and monitor sales pipelines effectively.<\\/li><li><strong>Human Resource Management<\\/strong>: Added an HR module for employee management, attendance tracking, leave requests, and payroll integration.<\\/li><li><strong>Role-Based Access Control<\\/strong>: Implemented secure access controls, ensuring that only authorized users can view or edit sensitive data.<\\/li><li><strong>Data Analytics<\\/strong>: Embedded advanced reporting and analytics to provide actionable insights and improve operational efficiency.<\\/li><\\/ul><h3><strong>Technologies Used<\\/strong><\\/h3><ul><li><strong>Front-End<\\/strong>: React.js for a modern and responsive user interface, ensuring seamless navigation and interaction.<\\/li><li><strong>Back-End<\\/strong>: Laravel for robust server-side processing and API development.<\\/li><li><strong>Database<\\/strong>: MySQL for structured and reliable data storage.<\\/li><li><strong>APIs<\\/strong>: Integrated third-party APIs for enhanced functionality, such as tax calculations, payment gateways, and email notifications.<\\/li><li><strong>Cloud Hosting<\\/strong>: cPanel for scalability and reliable performance.<\\/li><\\/ul><h3><strong>Design Highlights<\\/strong><\\/h3><ul><li><strong>User-Focused Design<\\/strong>: Created a clean and structured interface, prioritizing usability and minimizing the learning curve for new users.<\\/li><li><strong>Customizable Workflow<\\/strong>: Designed the system to accommodate customizable workflows, aligning with diverse business needs.<\\/li><li><strong>Responsive Design<\\/strong>: Ensured compatibility across desktops, tablets, and mobile devices for consistent user experience.<\\/li><li><strong>Data Security<\\/strong>: Followed industry best practices for data encryption, backups, and compliance with GDPR and other data protection regulations.<\\/li><\\/ul><p><strong>ERP<\\/strong> simplifies complex business operations into a cohesive system, helping organizations save time, reduce costs, and drive growth effectively.<\\/p><\\/div><\\/div><\\/div><\\/div>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"seo_meta_image\":null,\"submitter\":\"apply\",\"status\":\"published\",\"is_featured\":\"0\",\"image\":\"capture1.PNG\",\"client\":\"Tech Company\",\"link\":\"https:\\/\\/3sagro.globalerpserver.com\\/login\",\"start_date\":\"2023-04-20\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '127.0.0.1', 1, 4, 'Full functional ERP system', 'primary', '2025-01-10 00:41:29', '2025-01-10 00:41:29'),
(53, 1, 'project', '{\"name\":\"Full functional ERP system\",\"model\":\"Botble\\\\Portfolio\\\\Models\\\\Project\",\"slug\":\"3sagroglobalerpservercomlogin\",\"slug_id\":\"42\",\"is_slug_editable\":\"1\",\"description\":\"Full functional ERP System including HRM, CRM, Inventory, Accounts\",\"content\":\"<div class=\\\"flex max-w-full flex-col flex-grow\\\"><div class=\\\"min-h-8 text-message flex w-full flex-col items-end gap-2 whitespace-normal break-words text-start [.text-message+&amp;]:mt-5\\\"><div class=\\\"flex w-full flex-col gap-1 empty:hidden first:pt-[3px]\\\"><div class=\\\"markdown prose w-full break-words dark:prose-invert dark\\\"><p><strong>ERP<\\/strong> is a robust and comprehensive Enterprise Resource Planning (ERP) system designed to streamline and automate business operations across various departments. The project focused on creating a user-friendly and highly customizable platform to help businesses improve efficiency, make data-driven decisions, and achieve organizational goals. The system integrates essential modules such as inventory, sales, finance, human resources, and customer relationship management into a unified platform.<\\/p><h3><strong>Key Features<\\/strong><\\/h3><ul><li><strong>Centralized Dashboard<\\/strong>: Designed an intuitive and centralized dashboard that provides a real-time overview of key business metrics, enabling quick and informed decision-making.<\\/li><li><strong>Modular Architecture<\\/strong>: Developed a flexible, modular system that allows businesses to enable or disable features based on their unique requirements.<\\/li><li><strong>Inventory Management<\\/strong>: Implemented an inventory module for tracking stock levels, automating reorders, and generating reports to minimize wastage and overstocking.<\\/li><li><strong>Finance &amp; Accounting<\\/strong>: Integrated financial tools for budget planning, expense tracking, payroll processing, and generating detailed financial reports.<\\/li><li><strong>Sales and CRM<\\/strong>: Created a sales and CRM module to manage leads, track customer interactions, and monitor sales pipelines effectively.<\\/li><li><strong>Human Resource Management<\\/strong>: Added an HR module for employee management, attendance tracking, leave requests, and payroll integration.<\\/li><li><strong>Role-Based Access Control<\\/strong>: Implemented secure access controls, ensuring that only authorized users can view or edit sensitive data.<\\/li><li><strong>Data Analytics<\\/strong>: Embedded advanced reporting and analytics to provide actionable insights and improve operational efficiency.<\\/li><\\/ul><h3><strong>Technologies Used<\\/strong><\\/h3><ul><li><strong>Front-End<\\/strong>: React.js for a modern and responsive user interface, ensuring seamless navigation and interaction.<\\/li><li><strong>Back-End<\\/strong>: Laravel for robust server-side processing and API development.<\\/li><li><strong>Database<\\/strong>: MySQL for structured and reliable data storage.<\\/li><li><strong>APIs<\\/strong>: Integrated third-party APIs for enhanced functionality, such as tax calculations, payment gateways, and email notifications.<\\/li><li><strong>Cloud Hosting<\\/strong>: cPanel for scalability and reliable performance.<\\/li><\\/ul><h3><strong>Design Highlights<\\/strong><\\/h3><ul><li><strong>User-Focused Design<\\/strong>: Created a clean and structured interface, prioritizing usability and minimizing the learning curve for new users.<\\/li><li><strong>Customizable Workflow<\\/strong>: Designed the system to accommodate customizable workflows, aligning with diverse business needs.<\\/li><li><strong>Responsive Design<\\/strong>: Ensured compatibility across desktops, tablets, and mobile devices for consistent user experience.<\\/li><li><strong>Data Security<\\/strong>: Followed industry best practices for data encryption, backups, and compliance with GDPR and other data protection regulations.<\\/li><\\/ul><p><strong>ERP<\\/strong> simplifies complex business operations into a cohesive system, helping organizations save time, reduce costs, and drive growth effectively.<\\/p><\\/div><\\/div><\\/div><\\/div>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"seo_meta_image\":null,\"submitter\":\"apply\",\"status\":\"published\",\"is_featured\":\"0\",\"image\":\"capture1.PNG\",\"client\":\"Tech Company\",\"link\":\"https:\\/\\/3sagro.globalerpserver.com\\/login\",\"start_date\":\"2023-04-20\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '127.0.0.1', 1, 4, 'Full functional ERP system', 'primary', '2025-01-10 00:41:50', '2025-01-10 00:41:50'),
(54, 1, 'project', '{\"name\":\"Full functional ERP system\",\"model\":\"Botble\\\\Portfolio\\\\Models\\\\Project\",\"slug\":\"full-functional-erp-system\",\"slug_id\":\"42\",\"is_slug_editable\":\"1\",\"description\":\"Full functional ERP System including HRM, CRM, Inventory, Accounts\",\"content\":\"<div class=\\\"flex max-w-full flex-col flex-grow\\\"><div class=\\\"min-h-8 text-message flex w-full flex-col items-end gap-2 whitespace-normal break-words text-start [.text-message+&amp;]:mt-5\\\"><div class=\\\"flex w-full flex-col gap-1 empty:hidden first:pt-[3px]\\\"><div class=\\\"markdown prose w-full break-words dark:prose-invert dark\\\"><p><strong>ERP<\\/strong> is a robust and comprehensive Enterprise Resource Planning (ERP) system designed to streamline and automate business operations across various departments. The project focused on creating a user-friendly and highly customizable platform to help businesses improve efficiency, make data-driven decisions, and achieve organizational goals. The system integrates essential modules such as inventory, sales, finance, human resources, and customer relationship management into a unified platform.<\\/p><h3><strong>Key Features<\\/strong><\\/h3><ul><li><strong>Centralized Dashboard<\\/strong>: Designed an intuitive and centralized dashboard that provides a real-time overview of key business metrics, enabling quick and informed decision-making.<\\/li><li><strong>Modular Architecture<\\/strong>: Developed a flexible, modular system that allows businesses to enable or disable features based on their unique requirements.<\\/li><li><strong>Inventory Management<\\/strong>: Implemented an inventory module for tracking stock levels, automating reorders, and generating reports to minimize wastage and overstocking.<\\/li><li><strong>Finance &amp; Accounting<\\/strong>: Integrated financial tools for budget planning, expense tracking, payroll processing, and generating detailed financial reports.<\\/li><li><strong>Sales and CRM<\\/strong>: Created a sales and CRM module to manage leads, track customer interactions, and monitor sales pipelines effectively.<\\/li><li><strong>Human Resource Management<\\/strong>: Added an HR module for employee management, attendance tracking, leave requests, and payroll integration.<\\/li><li><strong>Role-Based Access Control<\\/strong>: Implemented secure access controls, ensuring that only authorized users can view or edit sensitive data.<\\/li><li><strong>Data Analytics<\\/strong>: Embedded advanced reporting and analytics to provide actionable insights and improve operational efficiency.<\\/li><\\/ul><h3><strong>Technologies Used<\\/strong><\\/h3><ul><li><strong>Front-End<\\/strong>: React.js for a modern and responsive user interface, ensuring seamless navigation and interaction.<\\/li><li><strong>Back-End<\\/strong>: Laravel for robust server-side processing and API development.<\\/li><li><strong>Database<\\/strong>: MySQL for structured and reliable data storage.<\\/li><li><strong>APIs<\\/strong>: Integrated third-party APIs for enhanced functionality, such as tax calculations, payment gateways, and email notifications.<\\/li><li><strong>Cloud Hosting<\\/strong>: cPanel for scalability and reliable performance.<\\/li><\\/ul><h3><strong>Design Highlights<\\/strong><\\/h3><ul><li><strong>User-Focused Design<\\/strong>: Created a clean and structured interface, prioritizing usability and minimizing the learning curve for new users.<\\/li><li><strong>Customizable Workflow<\\/strong>: Designed the system to accommodate customizable workflows, aligning with diverse business needs.<\\/li><li><strong>Responsive Design<\\/strong>: Ensured compatibility across desktops, tablets, and mobile devices for consistent user experience.<\\/li><li><strong>Data Security<\\/strong>: Followed industry best practices for data encryption, backups, and compliance with GDPR and other data protection regulations.<\\/li><\\/ul><p><strong>ERP<\\/strong> simplifies complex business operations into a cohesive system, helping organizations save time, reduce costs, and drive growth effectively.<\\/p><\\/div><\\/div><\\/div><\\/div>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"seo_meta_image\":null,\"submitter\":\"apply\",\"status\":\"published\",\"is_featured\":\"0\",\"image\":\"capture1.PNG\",\"client\":\"Tech Company\",\"link\":\"https:\\/\\/3sagro.globalerpserver.com\\/login\",\"start_date\":\"2023-04-20\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '127.0.0.1', 1, 4, 'Full functional ERP system', 'primary', '2025-01-10 00:41:59', '2025-01-10 00:41:59'),
(55, 1, 'project', '{\"name\":\"B2B Business solution For traders\",\"model\":\"Botble\\\\Portfolio\\\\Models\\\\Project\",\"slug\":\"b2b-business-solution-for-traders\",\"slug_id\":\"41\",\"is_slug_editable\":\"1\",\"description\":\"This is a B2B business communication website\\/\",\"content\":\"<p><strong>Tradevaly Bangladesh<\\/strong> is a dynamic B2B marketplace designed to connect buyers and suppliers across a wide range of industries. This platform facilitates seamless trade by providing a centralized space for businesses to discover, connect, and collaborate. As the developer of this website, the focus was on creating a robust, scalable, and user-friendly solution that enhances the trading experience for businesses in Bangladesh and beyond.<\\/p><h3><strong>Key Features<\\/strong><\\/h3><ul><li><strong>Comprehensive Product Listings<\\/strong>: Designed an organized catalog that allows suppliers to showcase their products with detailed descriptions, images, and pricing, making it easier for buyers to make informed decisions.<\\/li><li><strong>Advanced Search and Filtering<\\/strong>: Implemented a powerful search engine with filters for category, location, price, and supplier ratings, enabling users to find relevant products and suppliers quickly.<\\/li><li><strong>User Management<\\/strong>: Developed a role-based system for managing buyers, sellers, and administrators, ensuring secure access and streamlined operations.<\\/li><li><strong>Supplier Verification<\\/strong>: Integrated a verification system to build trust between buyers and suppliers by ensuring supplier authenticity and reliability.<\\/li><li><strong>Secure Messaging<\\/strong>: Added an in-platform messaging system for secure and efficient communication between buyers and suppliers.<\\/li><li><strong>Order Management<\\/strong>: Provided tools for managing inquiries, placing orders, and tracking transactions seamlessly.<\\/li><li><strong>Responsive Design<\\/strong>: Ensured the platform is fully responsive and optimized for desktops, tablets, and smartphones.<\\/li><li><strong>Multi-Language Support<\\/strong>: Included language options to cater to a diverse user base, improving accessibility and usability.<\\/li><\\/ul><h3><strong>Technologies Used<\\/strong><\\/h3><ul><li><strong>Front-End<\\/strong>: Developed using <strong>HTML CSS<\\/strong> for an interactive and responsive user interface.<\\/li><li><strong>Back-End<\\/strong>: Built on <strong>Laravel<\\/strong>, ensuring robust server-side operations and API development.<\\/li><li><strong>Database<\\/strong>: MySQL for secure and efficient data management.<\\/li><li><strong>Hosting<\\/strong>: Deployed on a cloud-based hosting solution to ensure scalability and reliability.<\\/li><li><strong>APIs<\\/strong>: Integrated third-party APIs for payment processing, shipping, and analytics.<\\/li><\\/ul><h3><strong>Design Highlights<\\/strong><\\/h3><ul><li><strong>User-Friendly Interface<\\/strong>: Focused on creating an intuitive design that allows users to navigate through products and categories effortlessly.<\\/li><li><strong>Professional Aesthetic<\\/strong>: Leveraged modern UI\\/UX principles to ensure the platform\'s design reflects professionalism and trustworthiness.<\\/li><li><strong>Performance Optimization<\\/strong>: Implemented caching, lazy loading, and database optimizations to ensure fast page load times even with high traffic.<\\/li><\\/ul><h3><strong>Impact<\\/strong><\\/h3><p><strong>Tradevaly Bangladesh<\\/strong> empowers businesses to expand their reach, improve trade efficiency, and foster strong partnerships. The platform serves as a bridge between buyers and suppliers, streamlining the trading process and contributing to the growth of B2B commerce in Bangladesh.<\\/p>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"seo_meta_image\":null,\"submitter\":\"apply\",\"status\":\"published\",\"is_featured\":\"1\",\"image\":\"capture2.PNG\",\"client\":\"Finance Company\",\"link\":\"https:\\/\\/tradevaly.com.bd\\/\",\"start_date\":\"2022-09-10\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '127.0.0.1', 1, 3, 'B2B Business solution For traders', 'primary', '2025-01-10 00:42:20', '2025-01-10 00:42:20'),
(56, 1, 'project', '{\"category_ids\":[\"1\",\"2\"],\"name\":\"Gamming Asset Vendor\",\"model\":\"Botble\\\\Portfolio\\\\Models\\\\Project\",\"slug\":\"gamming-asset-vendor\",\"slug_id\":\"40\",\"is_slug_editable\":\"1\",\"description\":\"The platform offers a seamless and secure environment for buying and selling in-game assets\",\"content\":\"<div class=\\\"flex max-w-full flex-col flex-grow\\\"><div class=\\\"min-h-8 text-message flex w-full flex-col items-end gap-2 whitespace-normal break-words text-start [.text-message+&amp;]:mt-5\\\" data-message-author-role=\\\"assistant\\\" data-message-id=\\\"43287d87-4a7d-46f9-bfab-31382a6c695a\\\" dir=\\\"auto\\\" data-message-model-slug=\\\"gpt-4o\\\"><div class=\\\"flex w-full flex-col gap-1 empty:hidden first:pt-[3px]\\\"><div class=\\\"markdown prose w-full break-words dark:prose-invert dark\\\"><p><strong>FFALC<\\/strong> is an innovative gaming asset marketplace tailored for gamers who play titles like <strong>Free Fire<\\/strong>, <strong>PUBG<\\/strong>, and other popular games. The platform offers a seamless and secure environment for buying and selling in-game assets such as diamonds, UC (Unknown Cash), and other gaming currencies. It combines convenience, functionality, and security, making it the ultimate destination for gaming enthusiasts.<\\/p><h3><strong>Key Features<\\/strong><\\/h3><ul><li><strong>Gaming Asset Marketplace<\\/strong>: Facilitates the purchase and sale of in-game currencies like diamonds and UC, enabling gamers to enhance their experience effortlessly.<\\/li><li><strong>Wallet System<\\/strong>: Integrated wallet functionality allows users to load funds, track transactions, and make purchases seamlessly.<\\/li><li><strong>Secure Payment Gateway<\\/strong>: Supports multiple payment options for safe and hassle-free transactions, including credit\\/debit cards, mobile banking, and digital wallets.<\\/li><li><strong>Live Chat Support<\\/strong>: Real-time chat feature enables users to connect with customer support for instant assistance.<\\/li><li><strong>User Dashboard<\\/strong>: A feature-rich dashboard where users can manage orders, view transaction history, and monitor their account activity.<\\/li><li><strong>Order Tracking<\\/strong>: Provides real-time updates on asset delivery status for a transparent user experience.<\\/li><li><strong>Promotions and Discounts<\\/strong>: Offers exclusive deals, discounts, and promotional campaigns to attract and retain users.<\\/li><\\/ul><h3><strong>Technologies Used<\\/strong><\\/h3><ul><li><strong>Front-End<\\/strong>: Built using <strong>React.js<\\/strong> for a dynamic and responsive user interface.<\\/li><li><strong>Back-End<\\/strong>: Developed with <strong>Laravel<\\/strong>, ensuring robust and scalable server-side operations.<\\/li><li><strong>Database<\\/strong>: MySQL for secure and efficient data storage and management.<\\/li><li><strong>Payment Gateway Integration<\\/strong>: Supports multiple gateways such as <strong>Stripe<\\/strong>, <strong>PayPal<\\/strong>, and local payment methods for flexibility.<\\/li><li><strong>Real-Time Communication<\\/strong>: Integrated <strong>WebSocket<\\/strong> technology for live chat and instant notifications.<\\/li><\\/ul><h3><strong>Design Highlights<\\/strong><\\/h3><ul><li><strong>Gaming-Inspired Aesthetic<\\/strong>: A visually appealing design that resonates with the gaming community, featuring vibrant colors and engaging UI elements.<\\/li><li><strong>Responsive and Fast<\\/strong>: Optimized for desktop and mobile devices, ensuring a smooth user experience on all platforms.<\\/li><li><strong>User-Friendly Navigation<\\/strong>: Intuitive design for easy access to key features like wallet, orders, and support.<\\/li><\\/ul><h3><strong>Impact<\\/strong><\\/h3><p><strong>FFALC<\\/strong> enhances the gaming experience by providing a one-stop solution for acquiring in-game assets. Its secure and feature-rich platform builds trust among gamers, making it a go-to destination for competitive and casual players alike. The integration of wallet systems and live chat ensures convenience and engagement, fostering a thriving gaming community.<\\/p><\\/div><\\/div><\\/div><\\/div>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"seo_meta_image\":null,\"submitter\":\"apply\",\"status\":\"published\",\"is_featured\":\"1\",\"image\":\"capture3.PNG\",\"client\":\"Education Startup\",\"link\":\"https:\\/\\/ffalc.com\\/\",\"start_date\":\"2023-03-15\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '127.0.0.1', 1, 2, 'Gamming Asset Vendor', 'primary', '2025-01-10 00:47:24', '2025-01-10 00:47:24');
INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(57, 1, 'project', '{\"category_ids\":[\"1\",\"2\"],\"name\":\"Property Agency\",\"model\":\"Botble\\\\Portfolio\\\\Models\\\\Project\",\"slug\":\"property-agency\",\"slug_id\":\"39\",\"is_slug_editable\":\"1\",\"description\":\"The website offers advanced functionalities, including integration with external property market\",\"content\":\"<p><strong>US Metro Realty<\\/strong> is a robust property management platform designed for property agents, buyers, and sellers to seamlessly browse, list, and manage real estate properties. The website offers advanced functionalities, including integration with external property market APIs, multiple user roles with distinct dashboards, a sophisticated advanced searching system, and real-time communication features. It\\u2019s a comprehensive solution for streamlining property transactions and enhancing user engagement.<\\/p><h3><strong>Key Features<\\/strong><\\/h3><ul><li><strong>Advanced Searching System<\\/strong>:<ul><li><strong>Dynamic Filters<\\/strong>: Refine search results by property type, location, price range, area size, bedrooms, and more.<\\/li><li><strong>Keyword Search<\\/strong>: Search by specific terms like \\\"luxury apartment\\\" or \\\"ocean view.\\\"<\\/li><li><strong>Interactive Map Search<\\/strong>: Visualize property locations on a live map for better insights.<\\/li><li><strong>API-Integrated Search<\\/strong>: Fetch up-to-date listings from external property APIs.<\\/li><li><strong>Saved Searches &amp; Alerts<\\/strong>: Users can save search criteria and receive alerts for matching properties.<\\/li><li><strong>Real-Time Updates<\\/strong>: Results dynamically update without refreshing the page.<\\/li><\\/ul><\\/li><li><strong>Property Listings from API<\\/strong>: Displays real estate properties fetched dynamically from external market APIs, ensuring up-to-date data.<\\/li><li><strong>User-Generated Listings<\\/strong>: Enables users to create, manage, and publish their property listings.<\\/li><li><strong>Four User Roles with Dashboards<\\/strong>:<ul><li><strong>Admin<\\/strong>: Oversees the platform, manages users, and moderates listings.<\\/li><li><strong>Agents<\\/strong>: Dedicated tools to manage property portfolios and client interactions.<\\/li><li><strong>Buyers\\/Sellers<\\/strong>: Personalized dashboards for inquiries and transactions.<\\/li><li><strong>Guest Users<\\/strong>: Limited browsing with contact options for agents.<\\/li><\\/ul><\\/li><li><strong>Live Chat with Livewire<\\/strong>: Real-time chat feature for seamless communication between buyers, sellers, and agents.<\\/li><li><strong>Intercommunication<\\/strong>: Direct messaging across all user roles for enhanced collaboration.<\\/li><li><strong>Search and Filtering<\\/strong>: Tailored search options with various filters for efficient property discovery.<\\/li><\\/ul><h3><strong>Technologies Used<\\/strong><\\/h3><ul><li><strong>Front-End<\\/strong>: Blade Templates, Bootstrap for responsive design, and interactive elements.<\\/li><li><strong>Back-End<\\/strong>: Laravel for secure, scalable server-side logic and API integration.<\\/li><li><strong>Database<\\/strong>: MySQL for structured data management and efficient querying.<\\/li><li><strong>Real-Time Updates<\\/strong>: Livewire and WebSockets for dynamic interactions and notifications.<\\/li><li><strong>Search Optimization<\\/strong>: Elasticsearch or Algolia for fast, accurate searching capabilities.<\\/li><li><strong>API Integration<\\/strong>: Seamless fetching of property data through external APIs.<\\/li><\\/ul><h3><strong>Design Highlights<\\/strong><\\/h3><ul><li><strong>Modern Interface<\\/strong>: Clean, professional design for intuitive user interaction.<\\/li><li><strong>Custom Dashboards<\\/strong>: User-specific dashboards with role-based functionalities.<\\/li><li><strong>Optimized Performance<\\/strong>: Fast page loads and efficient data retrieval from APIs and databases.<\\/li><\\/ul><h3><strong>Impact<\\/strong><\\/h3><p>With its <strong>Advanced Searching System<\\/strong>, personalized dashboards, and real-time communication, <strong>US Metro Realty<\\/strong> redefines property management by providing a secure, interactive, and user-friendly platform. It bridges the gap between buyers, sellers, and agents, making property transactions seamless, transparent, and efficient.<\\/p>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"seo_meta_image\":null,\"submitter\":\"apply\",\"status\":\"published\",\"is_featured\":\"1\",\"image\":\"capture4.PNG\",\"client\":\"Corporate Client\",\"link\":\"https:\\/\\/usmetrorealty.us\\/\",\"start_date\":\"2023-06-01\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'Property Agency', 'primary', '2025-01-10 00:53:09', '2025-01-10 00:53:09'),
(58, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', '127.0.0.1', 0, 1, 'Rahman Tutul', 'info', '2025-02-10 10:54:27', '2025-02-10 10:54:27');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `description` varchar(400) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `author_id` bigint(20) UNSIGNED DEFAULT NULL,
  `author_type` varchar(191) NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) DEFAULT NULL,
  `order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `description`, `status`, `author_id`, `author_type`, `icon`, `order`, `is_featured`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'Web Development', 0, 'Consequatur rerum omnis fugit ipsam quo. Ullam occaecati maiores quibusdam cumque est sit. Omnis ut suscipit in aliquid qui nihil. Voluptate in amet quis ea.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(2, 'Open Source Contributions', 0, 'Magni quis exercitationem quod est. Doloribus ab libero ut totam quod sit molestiae. Iusto architecto autem quas labore.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(3, 'Tutorials', 0, 'Cupiditate vitae eligendi inventore dolore nihil. Eum sit consequuntur voluptas magnam. Autem facere consequatur sunt voluptas.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(4, 'Technology Reviews', 0, 'Consectetur illo sint consequatur ipsam. Illum molestias aut aut qui. Officiis quo architecto molestiae suscipit quas. Perspiciatis quod sit pariatur veritatis.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(5, 'Personal Blog', 0, 'Et pariatur qui soluta velit. Libero qui sed tempora est sed adipisci praesentium.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(6, 'Career Journey', 0, 'Non nam ut amet et eos doloremque ut. Alias deserunt doloremque blanditiis dolor ea recusandae facere. Ullam itaque sunt fuga sunt vitae repudiandae ut. Omnis consequatur quo eius consequatur.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(7, 'Coding Challenges', 0, 'Aspernatur nobis nihil in est est voluptates aut repudiandae. Corrupti aliquam molestiae voluptatem maiores qui. Id ut quos et maxime error dolores.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(8, 'Design Portfolio', 0, 'Nemo iusto quis dolorum rerum ex. Consequuntur tempora ea laboriosam voluptas culpa odio. Consequatur soluta qui accusantium aliquam sit voluptatibus blanditiis necessitatibus.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(9, 'Collaborations', 0, 'Quibusdam eveniet vitae consequuntur. Consequatur voluptas ut laborum quia dolorum quo. Aut saepe impedit vitae vel voluptatem quam magnam deserunt.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2024-10-20 21:49:09', '2024-10-20 21:49:09');

-- --------------------------------------------------------

--
-- Table structure for table `categories_translations`
--

CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) NOT NULL,
  `categories_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `phone` varchar(60) DEFAULT NULL,
  `address` varchar(120) DEFAULT NULL,
  `subject` varchar(120) DEFAULT NULL,
  `content` longtext NOT NULL,
  `custom_fields` text DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_custom_fields`
--

CREATE TABLE `contact_custom_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(191) NOT NULL,
  `placeholder` varchar(191) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 999,
  `status` varchar(191) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_custom_fields_translations`
--

CREATE TABLE `contact_custom_fields_translations` (
  `contact_custom_fields_id` bigint(20) UNSIGNED NOT NULL,
  `lang_code` varchar(191) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `placeholder` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_custom_field_options`
--

CREATE TABLE `contact_custom_field_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `custom_field_id` bigint(20) UNSIGNED NOT NULL,
  `label` varchar(191) DEFAULT NULL,
  `value` varchar(191) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 999,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_custom_field_options_translations`
--

CREATE TABLE `contact_custom_field_options_translations` (
  `contact_custom_field_options_id` bigint(20) UNSIGNED NOT NULL,
  `lang_code` varchar(191) NOT NULL,
  `label` varchar(191) DEFAULT NULL,
  `value` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_replies`
--

CREATE TABLE `contact_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` longtext NOT NULL,
  `contact_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widgets`
--

CREATE TABLE `dashboard_widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dashboard_widgets`
--

INSERT INTO `dashboard_widgets` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'widget_total_themes', '2024-12-15 10:36:52', '2024-12-15 10:36:52'),
(2, 'widget_total_users', '2024-12-15 10:36:52', '2024-12-15 10:36:52'),
(3, 'widget_total_plugins', '2024-12-15 10:36:52', '2024-12-15 10:36:52'),
(4, 'widget_total_pages', '2024-12-15 10:36:52', '2024-12-15 10:36:52'),
(5, 'widget_posts_recent', '2024-12-15 10:36:52', '2024-12-15 10:36:52'),
(6, 'widget_audit_logs', '2024-12-15 10:36:52', '2024-12-15 10:36:52'),
(7, 'widget_request_errors', '2024-12-15 10:36:52', '2024-12-15 10:36:52');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widget_settings`
--

CREATE TABLE `dashboard_widget_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `settings` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `widget_id` bigint(20) UNSIGNED NOT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `category_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'What is business consulting?', 'Business consulting involves providing expert advice to organizations to help them improve their performance and achieve their business objectives.', 2, 'published', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(2, 'How can consulting services benefit my business?', 'Consulting services can provide insights, strategies, and solutions to address specific challenges, improve efficiency, enhance decision-making, and ultimately contribute to the overall success of your business.', 2, 'published', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(3, 'What specific services do you provide?', 'We offer a range of services, including strategic planning, financial advisory, operations optimization, market research, and more. Our goal is to tailor our services to meet the unique needs of each client.', 1, 'published', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(4, 'How do you structure your fees?', 'Our fees are structured based on the scope and complexity of the project. We offer different pricing models, including hourly rates, project-based fees, and retainer agreements. The specific fee structure will be discussed and agreed upon during the initial consultation.', 1, 'published', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(5, 'What industries do you specialize in?', 'We have experience and expertise across various industries, including but not limited to technology, finance, healthcare, and manufacturing. Our consultants work closely with clients to understand industry-specific challenges and provide tailored solutions.', 3, 'published', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(6, 'Can you share any client testimonials or case studies?', 'Certainly! We have a collection of client testimonials and case studies that highlight the success stories of our consulting engagements. Please visit our \'Client Success Stories\' section for more details.', 2, 'published', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(7, 'How do you collaborate with clients during the consulting process?', 'We believe in a collaborative approach. Throughout the consulting process, we maintain open communication with our clients, involve key stakeholders, and ensure that the client\'s perspective is integral to the decision-making process.', 3, 'published', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(8, 'How long does a typical consulting engagement last?', 'The duration of a consulting engagement varies depending on the nature and scope of the project. During the initial consultation, we work with clients to define the timeline and milestones for the project, ensuring alignment with their goals and objectives.', 3, 'published', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(9, 'Who are the key members of your consulting team?', 'Our consulting team consists of highly qualified and experienced professionals with diverse backgrounds. You can learn more about our team members on the \'Meet the Team\' page of our website.', 3, 'published', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(10, 'How do you handle client information and sensitive data?', 'We take data privacy and confidentiality seriously. Our firm adheres to strict security protocols to protect client information. We have established measures to ensure the confidentiality and security of sensitive data throughout the consulting process.', 3, 'published', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(11, 'Is there ongoing support after the consulting engagement?', 'Yes, we provide ongoing support to our clients even after the completion of the consulting engagement. This may include follow-up meetings, additional training, and assistance with the implementation of recommended strategies to ensure sustained success.', 1, 'published', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(12, 'What is your policy regarding cancellations?', 'Our cancellation policy is outlined in the consulting agreement. Generally, we require advance notice for cancellations, and any associated fees or refunds will be discussed and agreed upon during the initial engagement negotiations.', 1, 'published', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(13, 'What is your approach to sustainability consulting?', 'In sustainability consulting, we work with clients to develop environmentally responsible and socially conscious business practices. Our approach involves assessing current operations, identifying areas for improvement, and implementing sustainable strategies to reduce environmental impact and promote corporate social responsibility.', 3, 'published', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(14, 'Do you offer remote consulting services?', 'Yes, we offer remote consulting services to clients worldwide. Our team is equipped to conduct virtual meetings, collaborate online, and deliver effective consulting services remotely. This allows us to work with clients regardless of geographical location.', 2, 'published', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(15, 'How can your technology integration services benefit my business?', 'Our technology integration services focus on streamlining business processes through the effective use of technology. By integrating the right technologies, we help businesses enhance efficiency, improve communication, and stay competitive in today\'s rapidly evolving digital landscape.', 2, 'published', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(16, 'What sets your leadership development programs apart?', 'Our leadership development programs are designed to empower individuals at all levels of an organization. We go beyond traditional training, focusing on personalized coaching, mentorship, and experiential learning to cultivate effective and inspiring leaders within your company.', 1, 'published', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(17, 'How do you stay updated on industry trends and best practices?', 'We are committed to staying at the forefront of industry trends and best practices. Our team actively engages in continuous learning, participates in relevant conferences, and maintains a strong network of industry professionals to ensure that our consulting services are informed by the latest insights and innovations.', 3, 'published', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(18, 'What measures do you take to ensure the quality of your consulting services?', 'We prioritize the quality of our consulting services by implementing rigorous quality assurance processes. This includes regular reviews of our methodologies, ongoing training for our consultants, and soliciting feedback from clients to continuously improve our service delivery.', 2, 'published', '2024-10-20 21:49:09', '2024-10-20 21:49:09');

-- --------------------------------------------------------

--
-- Table structure for table `faqs_translations`
--

CREATE TABLE `faqs_translations` (
  `lang_code` varchar(20) NOT NULL,
  `faqs_id` bigint(20) UNSIGNED NOT NULL,
  `question` text DEFAULT NULL,
  `answer` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faq_categories`
--

CREATE TABLE `faq_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faq_categories`
--

INSERT INTO `faq_categories` (`id`, `name`, `order`, `status`, `created_at`, `updated_at`, `description`) VALUES
(1, 'Service Offerings', 0, 'published', '2024-10-20 21:49:09', '2024-10-20 21:49:09', NULL),
(2, 'Cost and Billing', 1, 'published', '2024-10-20 21:49:09', '2024-10-20 21:49:09', NULL),
(3, 'Follow-Up Support', 2, 'published', '2024-10-20 21:49:09', '2024-10-20 21:49:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `faq_categories_translations`
--

CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(20) NOT NULL,
  `faq_categories_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fob_comments`
--

CREATE TABLE `fob_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reply_to` bigint(20) UNSIGNED DEFAULT NULL,
  `author_type` varchar(191) DEFAULT NULL,
  `author_id` bigint(20) UNSIGNED DEFAULT NULL,
  `reference_type` varchar(191) DEFAULT NULL,
  `reference_id` bigint(20) UNSIGNED DEFAULT NULL,
  `reference_url` varchar(255) DEFAULT NULL,
  `name` varchar(120) NOT NULL,
  `email` varchar(120) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `content` longtext NOT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'pending',
  `ip_address` varchar(45) NOT NULL,
  `user_agent` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fob_comments`
--

INSERT INTO `fob_comments` (`id`, `reply_to`, `author_type`, `author_id`, `reference_type`, `reference_id`, `reference_url`, `name`, `email`, `website`, `content`, `status`, `ip_address`, `user_agent`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, 'Botble\\Blog\\Models\\Post', 2, 'http://zelio.test', 'Prof. Manuel Armstrong', 'hector17@olson.com', 'https://friendsofbotble.com', 'This is really helpful, thank you!', 'approved', '45.86.22.165', 'Mozilla/5.0 (compatible; MSIE 6.0; Windows NT 4.0; Trident/4.0)', '2024-10-03 12:14:46', '2024-10-20 21:49:12'),
(2, NULL, NULL, NULL, 'Botble\\Blog\\Models\\Post', 5, 'http://zelio.test', 'Lessie Reynolds PhD', 'ebony.vonrueden@yahoo.com', 'https://friendsofbotble.com', 'I found this article to be quite informative.', 'approved', '41.214.3.21', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_0) AppleWebKit/536.1 (KHTML, like Gecko) Chrome/99.0.4577.48 Safari/536.1 Edg/99.01103.43', '2024-10-05 14:42:35', '2024-10-20 21:49:12'),
(3, NULL, NULL, NULL, 'Botble\\Blog\\Models\\Post', 5, 'http://zelio.test', 'Ms. Madalyn Halvorson DDS', 'terence29@gmail.com', 'https://friendsofbotble.com', 'Wow, I never knew about this before!', 'approved', '150.47.92.87', 'Mozilla/5.0 (compatible; MSIE 10.0; Windows 98; Trident/4.0)', '2024-10-19 12:14:52', '2024-10-20 21:49:12'),
(4, NULL, NULL, NULL, 'Botble\\Blog\\Models\\Post', 11, 'http://zelio.test', 'Althea Larkin', 'rath.roberta@yahoo.com', 'https://friendsofbotble.com', 'Great job on explaining such a complex topic.', 'approved', '250.150.99.29', 'Mozilla/5.0 (compatible; MSIE 6.0; Windows NT 5.01; Trident/4.0)', '2024-10-04 21:14:16', '2024-10-20 21:49:12'),
(5, NULL, NULL, NULL, 'Botble\\Blog\\Models\\Post', 11, 'http://zelio.test', 'Ms. Marisa Jenkins IV', 'gerhold.roma@yahoo.com', 'https://friendsofbotble.com', 'I have a question about the third paragraph.', 'approved', '207.188.87.196', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_6_0) AppleWebKit/5352 (KHTML, like Gecko) Chrome/36.0.816.0 Mobile Safari/5352', '2024-09-27 11:11:21', '2024-10-20 21:49:12'),
(6, NULL, NULL, NULL, 'Botble\\Blog\\Models\\Post', 2, 'http://zelio.test', 'Kyler Kuvalis', 'rogahn.audra@yahoo.com', 'https://friendsofbotble.com', 'This article changed my perspective entirely.', 'approved', '224.95.99.25', 'Opera/8.93 (Windows NT 4.0; nl-NL) Presto/2.11.194 Version/11.00', '2024-10-09 03:49:48', '2024-10-20 21:49:12'),
(7, NULL, NULL, NULL, 'Botble\\Blog\\Models\\Post', 3, 'http://zelio.test', 'Kaylie Greenholt', 'graciela48@armstrong.com', 'https://friendsofbotble.com', 'I appreciate the effort you put into this.', 'approved', '110.140.11.148', 'Mozilla/5.0 (Windows NT 4.0) AppleWebKit/5312 (KHTML, like Gecko) Chrome/39.0.853.0 Mobile Safari/5312', '2024-10-14 09:23:54', '2024-10-20 21:49:12'),
(8, NULL, NULL, NULL, 'Botble\\Blog\\Models\\Post', 9, 'http://zelio.test', 'Gudrun Hermiston', 'mblanda@yahoo.com', 'https://friendsofbotble.com', 'This is exactly what I was looking for, thank you!', 'approved', '220.8.181.158', 'Opera/9.56 (X11; Linux x86_64; sl-SI) Presto/2.11.160 Version/12.00', '2024-10-05 21:31:07', '2024-10-20 21:49:12'),
(9, NULL, NULL, NULL, 'Botble\\Blog\\Models\\Post', 13, 'http://zelio.test', 'Giovani Homenick', 'cruz.treutel@yahoo.com', 'https://friendsofbotble.com', 'I disagree with some points mentioned here, though.', 'approved', '15.154.156.52', 'Opera/9.49 (X11; Linux i686; nl-NL) Presto/2.11.223 Version/12.00', '2024-09-26 22:50:51', '2024-10-20 21:49:12'),
(10, NULL, NULL, NULL, 'Botble\\Blog\\Models\\Post', 12, 'http://zelio.test', 'Dr. Ben Lehner', 'aryanna.little@skiles.com', 'https://friendsofbotble.com', 'Could you provide more examples to illustrate your point?', 'approved', '75.10.224.225', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5331 (KHTML, like Gecko) Chrome/40.0.826.0 Mobile Safari/5331', '2024-10-05 06:42:23', '2024-10-20 21:49:12'),
(11, NULL, NULL, NULL, 'Botble\\Blog\\Models\\Post', 14, 'http://zelio.test', 'Gerry Harber', 'josefina.crona@gmail.com', 'https://friendsofbotble.com', 'I wish there were more articles like this out there.', 'approved', '9.129.250.84', 'Mozilla/5.0 (compatible; MSIE 8.0; Windows CE; Trident/3.0)', '2024-10-10 17:38:15', '2024-10-20 21:49:12'),
(12, NULL, NULL, NULL, 'Botble\\Blog\\Models\\Post', 14, 'http://zelio.test', 'Dr. Donny Sawayn Jr.', 'ladarius.thiel@mccullough.biz', 'https://friendsofbotble.com', 'I\'m bookmarking this for future reference.', 'approved', '220.235.147.166', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.2; Trident/3.0)', '2024-09-21 19:53:04', '2024-10-20 21:49:12'),
(13, NULL, NULL, NULL, 'Botble\\Blog\\Models\\Post', 1, 'http://zelio.test', 'Guido Reichert', 'bethany77@hotmail.com', 'https://friendsofbotble.com', 'I\'ve shared this with my friends, they loved it!', 'approved', '236.44.170.219', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_0 like Mac OS X) AppleWebKit/532.0 (KHTML, like Gecko) Version/15.0 EdgiOS/96.01087.74 Mobile/15E148 Safari/532.0', '2024-10-15 08:32:10', '2024-10-20 21:49:12'),
(14, NULL, NULL, NULL, 'Botble\\Blog\\Models\\Post', 4, 'http://zelio.test', 'Dr. Gina Mayert PhD', 'sylvester26@gutkowski.info', 'https://friendsofbotble.com', 'This article is a must-read for everyone interested in the topic.', 'approved', '188.110.101.116', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_8_1) AppleWebKit/533.1 (KHTML, like Gecko) Chrome/99.0.4422.29 Safari/533.1 Edg/99.01027.48', '2024-09-21 03:54:46', '2024-10-20 21:49:12'),
(15, NULL, NULL, NULL, 'Botble\\Blog\\Models\\Post', 7, 'http://zelio.test', 'Prof. Sophia Lang', 'jalon46@yahoo.com', 'https://friendsofbotble.com', 'Thank you for shedding light on this important issue.', 'approved', '131.124.58.155', 'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 5.2; Trident/3.0)', '2024-09-26 18:06:43', '2024-10-20 21:49:12'),
(16, NULL, NULL, NULL, 'Botble\\Blog\\Models\\Post', 4, 'http://zelio.test', 'Prof. Andy Wunsch IV', 'hildegard.bergstrom@gmail.com', 'https://friendsofbotble.com', 'I\'ve been searching for information on this topic, glad I found this article.', 'approved', '233.148.182.130', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_1 like Mac OS X; nl-NL) AppleWebKit/531.10.5 (KHTML, like Gecko) Version/3.0.5 Mobile/8B112 Safari/6531.10.5', '2024-10-17 01:16:04', '2024-10-20 21:49:12'),
(17, NULL, NULL, NULL, 'Botble\\Blog\\Models\\Post', 10, 'http://zelio.test', 'Madelynn Lebsack', 'hallie83@gmail.com', 'https://friendsofbotble.com', 'I\'m blown away by the insights shared in this article.', 'approved', '73.24.13.8', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_0 like Mac OS X) AppleWebKit/531.1 (KHTML, like Gecko) Version/15.0 EdgiOS/83.01049.88 Mobile/15E148 Safari/531.1', '2024-10-14 23:47:57', '2024-10-20 21:49:12'),
(18, NULL, NULL, NULL, 'Botble\\Blog\\Models\\Post', 8, 'http://zelio.test', 'Dr. Keith McKenzie', 'rosie58@koss.com', 'https://friendsofbotble.com', 'This article tackles a complex topic with clarity.', 'approved', '142.94.2.200', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_2 like Mac OS X) AppleWebKit/535.0 (KHTML, like Gecko) Version/15.0 EdgiOS/99.01128.18 Mobile/15E148 Safari/535.0', '2024-10-20 16:52:52', '2024-10-20 21:49:12'),
(19, NULL, NULL, NULL, 'Botble\\Blog\\Models\\Post', 7, 'http://zelio.test', 'Mrs. Michaela Koepp Sr.', 'bartholome.skiles@yahoo.com', 'https://friendsofbotble.com', 'I\'m going to reflect on the ideas presented in this article.', 'approved', '3.164.48.123', 'Mozilla/5.0 (iPad; CPU OS 8_1_1 like Mac OS X; en-US) AppleWebKit/532.5.2 (KHTML, like Gecko) Version/4.0.5 Mobile/8B118 Safari/6532.5.2', '2024-10-17 03:15:59', '2024-10-20 21:49:12'),
(20, NULL, NULL, NULL, 'Botble\\Blog\\Models\\Post', 1, 'http://zelio.test', 'Stephon Hermann', 'oconnell.efren@hotmail.com', 'https://friendsofbotble.com', 'The author\'s passion for the subject shines through in this article.', 'approved', '200.86.21.126', 'Mozilla/5.0 (X11; Linux x86_64; rv:7.0) Gecko/20110722 Firefox/35.0', '2024-10-08 00:04:18', '2024-10-20 21:49:12'),
(21, NULL, NULL, NULL, 'Botble\\Blog\\Models\\Post', 14, 'http://zelio.test', 'Felicita Corkery V', 'turcotte.ward@hotmail.com', 'https://friendsofbotble.com', 'This article challenged my preconceptions in a thought-provoking way.', 'approved', '182.137.130.61', 'Mozilla/5.0 (compatible; MSIE 11.0; Windows NT 5.2; Trident/5.0)', '2024-10-11 05:27:25', '2024-10-20 21:49:12'),
(22, NULL, NULL, NULL, 'Botble\\Blog\\Models\\Post', 6, 'http://zelio.test', 'Willow Gulgowski', 'laverna.nader@padberg.com', 'https://friendsofbotble.com', 'I\'ve added this article to my reading list, it\'s worth revisiting.', 'approved', '252.207.251.216', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_8 rv:6.0; sl-SI) AppleWebKit/535.21.2 (KHTML, like Gecko) Version/4.0.1 Safari/535.21.2', '2024-10-17 14:41:57', '2024-10-20 21:49:12'),
(23, NULL, NULL, NULL, 'Botble\\Blog\\Models\\Post', 11, 'http://zelio.test', 'Prof. Aniya Simonis MD', 'jmarquardt@hotmail.com', 'https://friendsofbotble.com', 'This article offers practical advice that I can apply in real life.', 'approved', '216.184.238.179', 'Mozilla/5.0 (compatible; MSIE 5.0; Windows 98; Trident/4.0)', '2024-10-10 21:45:59', '2024-10-20 21:49:12'),
(24, NULL, NULL, NULL, 'Botble\\Blog\\Models\\Post', 7, 'http://zelio.test', 'Miss Antoinette West', 'alanis56@hagenes.com', 'https://friendsofbotble.com', 'I\'m going to recommend this article to my study group.', 'approved', '108.161.72.232', 'Opera/8.35 (Windows CE; nl-NL) Presto/2.8.215 Version/11.00', '2024-10-19 23:43:44', '2024-10-20 21:49:12'),
(25, NULL, NULL, NULL, 'Botble\\Blog\\Models\\Post', 4, 'http://zelio.test', 'Brooklyn Farrell', 'carley84@konopelski.com', 'https://friendsofbotble.com', 'The examples provided really helped me understand the concept better.', 'approved', '12.99.144.24', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_5_6 rv:6.0) Gecko/20100613 Firefox/37.0', '2024-09-26 14:18:41', '2024-10-20 21:49:12'),
(26, NULL, NULL, NULL, 'Botble\\Blog\\Models\\Post', 3, 'http://zelio.test', 'Zander Goldner V', 'gmcglynn@reichert.com', 'https://friendsofbotble.com', 'I resonate with the ideas presented here.', 'approved', '1.78.9.25', 'Mozilla/5.0 (Windows NT 5.0) AppleWebKit/537.2 (KHTML, like Gecko) Chrome/85.0.4753.19 Safari/537.2 Edg/85.01131.46', '2024-09-24 19:36:33', '2024-10-20 21:49:12'),
(27, NULL, NULL, NULL, 'Botble\\Blog\\Models\\Post', 6, 'http://zelio.test', 'Zakary McCullough', 'kiara.botsford@koch.com', 'https://friendsofbotble.com', 'This article made me think critically about the topic.', 'approved', '10.253.80.174', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_5_6) AppleWebKit/5352 (KHTML, like Gecko) Chrome/38.0.884.0 Mobile Safari/5352', '2024-10-09 07:33:50', '2024-10-20 21:49:12'),
(28, NULL, NULL, NULL, 'Botble\\Blog\\Models\\Post', 4, 'http://zelio.test', 'Dr. Pansy Grimes', 'legros.edyth@gmail.com', 'https://friendsofbotble.com', 'I\'ll definitely come back to this article for reference.', 'approved', '4.196.174.190', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5362 (KHTML, like Gecko) Chrome/36.0.856.0 Mobile Safari/5362', '2024-09-30 15:00:08', '2024-10-20 21:49:12'),
(29, NULL, NULL, NULL, 'Botble\\Blog\\Models\\Post', 12, 'http://zelio.test', 'Manuel Ernser', 'aliya66@oreilly.com', 'https://friendsofbotble.com', 'I\'ve shared this on social media, it\'s too good not to share.', 'approved', '242.16.102.19', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_7) AppleWebKit/537.0 (KHTML, like Gecko) Chrome/98.0.4841.43 Safari/537.0 Edg/98.01089.6', '2024-09-29 21:53:35', '2024-10-20 21:49:12'),
(30, NULL, NULL, NULL, 'Botble\\Blog\\Models\\Post', 3, 'http://zelio.test', 'Baylee Gottlieb', 'alvina70@schaden.com', 'https://friendsofbotble.com', 'This article presents a balanced view on a controversial topic.', 'approved', '113.63.235.184', 'Opera/9.88 (X11; Linux i686; nl-NL) Presto/2.11.188 Version/10.00', '2024-09-27 20:34:23', '2024-10-20 21:49:12'),
(31, NULL, NULL, NULL, 'Botble\\Blog\\Models\\Post', 7, 'http://zelio.test', 'Dr. Kyle Zboncak', 'mccullough.vance@yahoo.com', 'https://friendsofbotble.com', 'I\'m glad I stumbled upon this article, it\'s a gem.', 'approved', '238.91.137.108', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X; sl-SI) AppleWebKit/534.4.7 (KHTML, like Gecko) Version/4.0.5 Mobile/8B111 Safari/6534.4.7', '2024-09-28 18:41:08', '2024-10-20 21:49:12'),
(32, NULL, NULL, NULL, 'Botble\\Blog\\Models\\Post', 7, 'http://zelio.test', 'Glenna Romaguera', 'christina.keeling@jaskolski.com', 'https://friendsofbotble.com', 'I\'ve been struggling with this, your article helped a lot.', 'approved', '188.48.25.91', 'Mozilla/5.0 (compatible; MSIE 6.0; Windows CE; Trident/5.1)', '2024-09-25 17:01:37', '2024-10-20 21:49:12'),
(33, NULL, NULL, NULL, 'Botble\\Blog\\Models\\Post', 7, 'http://zelio.test', 'Izaiah Stracke', 'cierra.pfeffer@morissette.com', 'https://friendsofbotble.com', 'I\'ve learned something new today, thanks to this article.', 'approved', '46.133.178.69', 'Mozilla/5.0 (compatible; MSIE 7.0; Windows CE; Trident/5.0)', '2024-09-29 21:28:11', '2024-10-20 21:49:12'),
(34, NULL, NULL, NULL, 'Botble\\Blog\\Models\\Post', 3, 'http://zelio.test', 'Daija Kautzer', 'rex.russel@hotmail.com', 'https://friendsofbotble.com', 'Kudos to the author for a well-researched piece.', 'approved', '127.203.98.31', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_1 like Mac OS X) AppleWebKit/536.1 (KHTML, like Gecko) Version/15.0 EdgiOS/91.01129.20 Mobile/15E148 Safari/536.1', '2024-10-10 08:26:50', '2024-10-20 21:49:12'),
(35, NULL, NULL, NULL, 'Botble\\Blog\\Models\\Post', 12, 'http://zelio.test', 'Baby Hand DDS', 'romaguera.wilma@durgan.com', 'https://friendsofbotble.com', 'I\'m impressed by the depth of knowledge demonstrated here.', 'approved', '14.227.49.246', 'Mozilla/5.0 (compatible; MSIE 7.0; Windows NT 6.0; Trident/3.0)', '2024-10-07 14:45:52', '2024-10-20 21:49:12'),
(36, NULL, NULL, NULL, 'Botble\\Blog\\Models\\Post', 9, 'http://zelio.test', 'Darwin Kilback', 'lola50@hotmail.com', 'https://friendsofbotble.com', 'This article challenged my assumptions in a good way.', 'approved', '144.198.176.82', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_0 like Mac OS X) AppleWebKit/534.2 (KHTML, like Gecko) Version/15.0 EdgiOS/81.01072.78 Mobile/15E148 Safari/534.2', '2024-10-01 02:06:16', '2024-10-20 21:49:12'),
(37, NULL, NULL, NULL, 'Botble\\Blog\\Models\\Post', 13, 'http://zelio.test', 'Fiona Hyatt', 'nbosco@gmail.com', 'https://friendsofbotble.com', 'I\'ve shared this with my colleagues, it\'s worth discussing.', 'approved', '111.167.32.35', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_7_1 rv:4.0) Gecko/20211102 Firefox/36.0', '2024-10-20 20:22:13', '2024-10-20 21:49:12'),
(38, NULL, NULL, NULL, 'Botble\\Blog\\Models\\Post', 5, 'http://zelio.test', 'Carey Thompson', 'chermiston@gmail.com', 'https://friendsofbotble.com', 'The information presented here is very valuable.', 'approved', '138.215.134.97', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_0 rv:5.0; nl-NL) AppleWebKit/532.47.7 (KHTML, like Gecko) Version/4.0.3 Safari/532.47.7', '2024-10-08 23:31:18', '2024-10-20 21:49:12'),
(39, NULL, NULL, NULL, 'Botble\\Blog\\Models\\Post', 9, 'http://zelio.test', 'Kylee Ebert', 'kyost@yahoo.com', 'https://friendsofbotble.com', 'You have a talent for explaining complex topics clearly.', 'approved', '136.246.69.197', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_5_1 rv:2.0) Gecko/20191001 Firefox/37.0', '2024-10-05 13:13:07', '2024-10-20 21:49:12'),
(40, NULL, NULL, NULL, 'Botble\\Blog\\Models\\Post', 14, 'http://zelio.test', 'Prof. Xavier Botsford V', 'zula.dickinson@morar.net', 'https://friendsofbotble.com', 'I\'m inspired to learn more about this after reading your article.', 'approved', '32.36.134.89', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_9 rv:4.0; nl-NL) AppleWebKit/531.32.2 (KHTML, like Gecko) Version/5.0.5 Safari/531.32.2', '2024-10-15 21:14:39', '2024-10-20 21:49:12'),
(41, NULL, NULL, NULL, 'Botble\\Blog\\Models\\Post', 1, 'http://zelio.test', 'Eino Bogan', 'darrion.wiza@bayer.com', 'https://friendsofbotble.com', 'This article deserves wider recognition.', 'approved', '128.140.161.76', 'Mozilla/5.0 (Windows; U; Windows NT 5.1) AppleWebKit/534.49.4 (KHTML, like Gecko) Version/5.0 Safari/534.49.4', '2024-10-07 08:28:01', '2024-10-20 21:49:12'),
(42, NULL, NULL, NULL, 'Botble\\Blog\\Models\\Post', 5, 'http://zelio.test', 'Prof. Sherman Kertzmann II', 'royce44@gmail.com', 'https://friendsofbotble.com', 'I\'m grateful for the insights shared in this piece.', 'approved', '89.219.39.234', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/5311 (KHTML, like Gecko) Chrome/39.0.849.0 Mobile Safari/5311', '2024-09-27 21:26:03', '2024-10-20 21:49:12'),
(43, NULL, NULL, NULL, 'Botble\\Blog\\Models\\Post', 6, 'http://zelio.test', 'Kristoffer Bartoletti', 'bonnie72@yahoo.com', 'https://friendsofbotble.com', 'The author presents a balanced view on a controversial topic.', 'approved', '162.21.182.156', 'Mozilla/5.0 (Windows 98; nl-NL; rv:1.9.0.20) Gecko/20150123 Firefox/37.0', '2024-09-23 15:38:50', '2024-10-20 21:49:12'),
(44, NULL, NULL, NULL, 'Botble\\Blog\\Models\\Post', 8, 'http://zelio.test', 'Dereck Prosacco', 'noah53@gmail.com', 'https://friendsofbotble.com', 'I\'m glad I stumbled upon this article, it\'s', 'approved', '101.191.237.179', 'Opera/9.63 (X11; Linux i686; sl-SI) Presto/2.11.345 Version/10.00', '2024-10-02 17:08:13', '2024-10-20 21:49:12'),
(45, NULL, NULL, NULL, 'Botble\\Blog\\Models\\Post', 12, 'http://zelio.test', 'Anderson Fadel', 'terence.bechtelar@turcotte.com', 'https://friendsofbotble.com', 'I\'ve been searching for information on this topic, glad I found this article. It\'s incredibly insightful and provides a comprehensive overview of the subject matter. I appreciate the effort put into researching and writing this piece. It\'s truly eye-opening and has given me a new perspective. Thank you for sharing your knowledge with us!', 'approved', '134.188.83.17', 'Mozilla/5.0 (Windows NT 5.01) AppleWebKit/531.1 (KHTML, like Gecko) Chrome/98.0.4287.54 Safari/531.1 Edg/98.01061.54', '2024-10-17 16:03:02', '2024-10-20 21:49:12'),
(46, NULL, NULL, NULL, 'Botble\\Blog\\Models\\Post', 3, 'http://zelio.test', 'Eleonore Hirthe', 'bauch.myah@reilly.com', 'https://friendsofbotble.com', 'This article is a masterpiece! It dives deep into the topic and offers valuable insights that are both thought-provoking and enlightening. The author\'s expertise is evident throughout, making it a compelling read from start to finish. I\'ll definitely be coming back to this for reference in the future.', 'approved', '97.151.206.124', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/5351 (KHTML, like Gecko) Chrome/39.0.840.0 Mobile Safari/5351', '2024-09-22 03:23:48', '2024-10-20 21:49:12'),
(47, NULL, NULL, NULL, 'Botble\\Blog\\Models\\Post', 5, 'http://zelio.test', 'Rodolfo Harris V', 'whoppe@raynor.net', 'https://friendsofbotble.com', 'I\'m amazed by the depth of analysis in this article. It covers a wide range of aspects related to the topic, providing a comprehensive understanding. The clarity of explanation is commendable, making complex concepts easy to grasp. This article has enriched my understanding and sparked further curiosity. Kudos to the author!', 'approved', '165.200.183.17', 'Opera/8.73 (X11; Linux i686; en-US) Presto/2.12.281 Version/11.00', '2024-09-27 05:00:06', '2024-10-20 21:49:12');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `lang_id` bigint(20) UNSIGNED NOT NULL,
  `lang_name` varchar(120) NOT NULL,
  `lang_locale` varchar(20) NOT NULL,
  `lang_code` varchar(20) NOT NULL,
  `lang_flag` varchar(20) DEFAULT NULL,
  `lang_is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `lang_order` int(11) NOT NULL DEFAULT 0,
  `lang_is_rtl` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`lang_id`, `lang_name`, `lang_locale`, `lang_code`, `lang_flag`, `lang_is_default`, `lang_order`, `lang_is_rtl`) VALUES
(1, 'English', 'en', 'en_US', 'us', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `language_meta`
--

CREATE TABLE `language_meta` (
  `lang_meta_id` bigint(20) UNSIGNED NOT NULL,
  `lang_meta_code` varchar(20) DEFAULT NULL,
  `lang_meta_origin` varchar(32) NOT NULL,
  `reference_id` bigint(20) UNSIGNED NOT NULL,
  `reference_type` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `language_meta`
--

INSERT INTO `language_meta` (`lang_meta_id`, `lang_meta_code`, `lang_meta_origin`, `reference_id`, `reference_type`) VALUES
(1, 'en_US', '5458c2b6de5959e1056c4c81fb973499', 1, 'Botble\\Menu\\Models\\MenuLocation'),
(2, 'en_US', '149ac707fdec2b6f76c6a6dab52d7496', 1, 'Botble\\Menu\\Models\\Menu'),
(3, 'en_US', 'aaa555a0859ef809c8f6e38deb65a0e2', 1, 'Botble\\Menu\\Models\\MenuNode'),
(4, 'en_US', 'bddab70d9f6242d2e516f4d0d0168881', 5, 'Botble\\Menu\\Models\\MenuNode'),
(5, 'en_US', '0297447ddde2e5739b9cd3aead42c1c7', 6, 'Botble\\Menu\\Models\\MenuNode'),
(6, 'en_US', 'a29943a614787fad1b21813746a4d9fc', 7, 'Botble\\Menu\\Models\\MenuNode'),
(7, 'en_US', '336ec5dcd43ba2589f1cb0db74f6be17', 8, 'Botble\\Menu\\Models\\MenuNode'),
(8, 'en_US', '1f9c64e46e406a93b7caf5ed4d60bc84', 9, 'Botble\\Menu\\Models\\MenuNode');

-- --------------------------------------------------------

--
-- Table structure for table `media_files`
--

CREATE TABLE `media_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `alt` varchar(191) DEFAULT NULL,
  `folder_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `mime_type` varchar(120) NOT NULL,
  `size` int(11) NOT NULL,
  `url` varchar(191) NOT NULL,
  `options` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `visibility` varchar(191) NOT NULL DEFAULT 'public'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_files`
--

INSERT INTO `media_files` (`id`, `user_id`, `name`, `alt`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `visibility`) VALUES
(1, 0, '1', '1', 2, 'image/png', 9448, 'main/posts/1.png', '[]', '2024-10-20 21:49:08', '2024-10-20 21:49:08', NULL, 'public'),
(2, 0, '10', '10', 2, 'image/png', 9448, 'main/posts/10.png', '[]', '2024-10-20 21:49:08', '2024-10-20 21:49:08', NULL, 'public'),
(3, 0, '11', '11', 2, 'image/png', 9448, 'main/posts/11.png', '[]', '2024-10-20 21:49:08', '2024-10-20 21:49:08', NULL, 'public'),
(4, 0, '12', '12', 2, 'image/png', 9448, 'main/posts/12.png', '[]', '2024-10-20 21:49:08', '2024-10-20 21:49:08', NULL, 'public'),
(5, 0, '2', '2', 2, 'image/png', 9448, 'main/posts/2.png', '[]', '2024-10-20 21:49:08', '2024-10-20 21:49:08', NULL, 'public'),
(6, 0, '3', '3', 2, 'image/png', 9448, 'main/posts/3.png', '[]', '2024-10-20 21:49:08', '2024-10-20 21:49:08', NULL, 'public'),
(7, 0, '4', '4', 2, 'image/png', 9448, 'main/posts/4.png', '[]', '2024-10-20 21:49:08', '2024-10-20 21:49:08', NULL, 'public'),
(8, 0, '5', '5', 2, 'image/png', 9448, 'main/posts/5.png', '[]', '2024-10-20 21:49:08', '2024-10-20 21:49:08', NULL, 'public'),
(9, 0, '6', '6', 2, 'image/png', 9448, 'main/posts/6.png', '[]', '2024-10-20 21:49:08', '2024-10-20 21:49:08', NULL, 'public'),
(10, 0, '7', '7', 2, 'image/png', 9448, 'main/posts/7.png', '[]', '2024-10-20 21:49:08', '2024-10-20 21:49:08', NULL, 'public'),
(11, 0, '8', '8', 2, 'image/png', 9448, 'main/posts/8.png', '[]', '2024-10-20 21:49:08', '2024-10-20 21:49:08', NULL, 'public'),
(12, 0, '9', '9', 2, 'image/png', 9448, 'main/posts/9.png', '[]', '2024-10-20 21:49:08', '2024-10-20 21:49:08', NULL, 'public'),
(13, 0, 'background', 'background', 2, 'image/png', 9448, 'main/posts/background.png', '[]', '2024-10-20 21:49:09', '2024-10-20 21:49:09', NULL, 'public'),
(14, 0, '1', '1', 3, 'image/png', 2100, 'main/avatars/1.png', '[]', '2024-10-20 21:49:09', '2024-10-20 21:49:09', NULL, 'public'),
(15, 0, '2', '2', 3, 'image/png', 2100, 'main/avatars/2.png', '[]', '2024-10-20 21:49:09', '2024-10-20 21:49:09', NULL, 'public'),
(16, 0, 'man', 'man', 3, 'image/png', 2100, 'main/avatars/man.png', '[]', '2024-10-20 21:49:09', '2024-10-20 21:49:09', NULL, 'public'),
(17, 0, '1', '1', 4, 'image/png', 9448, 'main/projects/1.png', '[]', '2024-10-20 21:49:09', '2024-10-20 21:49:09', NULL, 'public'),
(18, 0, '2', '2', 4, 'image/png', 9448, 'main/projects/2.png', '[]', '2024-10-20 21:49:09', '2024-10-20 21:49:09', NULL, 'public'),
(19, 0, '3', '3', 4, 'image/png', 9448, 'main/projects/3.png', '[]', '2024-10-20 21:49:09', '2024-10-20 21:49:09', NULL, 'public'),
(20, 0, '4', '4', 4, 'image/png', 9448, 'main/projects/4.png', '[]', '2024-10-20 21:49:09', '2024-10-20 21:49:09', NULL, 'public'),
(21, 0, 'corporation-avatar', 'corporation-avatar', 6, 'image/png', 674, 'code/general/corporation-avatar.png', '[]', '2024-10-20 21:49:09', '2024-10-20 21:49:09', NULL, 'public'),
(22, 0, 'favicon', 'favicon', 6, 'image/png', 2465, 'code/general/favicon.png', '[]', '2024-10-20 21:49:10', '2024-10-20 21:49:10', NULL, 'public'),
(23, 0, 'footer-bg', 'footer-bg', 6, 'image/png', 6888, 'code/general/footer-bg.png', '[]', '2024-10-20 21:49:10', '2024-10-20 21:49:10', NULL, 'public'),
(24, 0, 'hero-bg-dark', 'hero-bg-dark', 6, 'image/png', 113996, 'code/general/hero-bg-dark.png', '[]', '2024-10-20 21:49:10', '2024-10-20 21:49:10', NULL, 'public'),
(25, 0, 'hero-bg', 'hero-bg', 6, 'image/png', 116152, 'code/general/hero-bg.png', '[]', '2024-10-20 21:49:10', '2024-10-20 21:49:10', NULL, 'public'),
(26, 0, 'logo-dark', 'logo-dark', 6, 'image/png', 2465, 'code/general/logo-dark.png', '[]', '2024-10-20 21:49:10', '2024-10-20 21:49:10', NULL, 'public'),
(27, 0, 'people-shape', 'people-shape', 6, 'image/png', 7048, 'code/general/people-shape.png', '[]', '2024-10-20 21:49:10', '2024-10-20 21:49:10', NULL, 'public'),
(28, 0, 'people', 'people', 6, 'image/png', 10553, 'code/general/people.png', '[]', '2024-10-20 21:49:10', '2024-10-20 21:49:10', NULL, 'public'),
(29, 0, 'projects-bg', 'projects-bg', 6, 'image/png', 80873, 'code/general/projects-bg.png', '[]', '2024-10-20 21:49:10', '2024-10-20 21:49:10', NULL, 'public'),
(30, 0, 'services-bg', 'services-bg', 6, 'image/png', 18424, 'code/general/services-bg.png', '[]', '2024-10-20 21:49:10', '2024-10-20 21:49:10', NULL, 'public'),
(31, 0, 'static-bg', 'static-bg', 6, 'image/png', 26400, 'code/general/static-bg.png', '[]', '2024-10-20 21:49:11', '2024-10-20 21:49:11', NULL, 'public'),
(32, 0, '1', '1', 7, 'image/png', 1866, 'code/skills/1.png', '[]', '2024-10-20 21:49:11', '2024-10-20 21:49:11', NULL, 'public'),
(33, 0, '2', '2', 7, 'image/png', 1866, 'code/skills/2.png', '[]', '2024-10-20 21:49:11', '2024-10-20 21:49:11', NULL, 'public'),
(34, 0, '3', '3', 7, 'image/png', 1866, 'code/skills/3.png', '[]', '2024-10-20 21:49:11', '2024-10-20 21:49:11', NULL, 'public'),
(35, 0, '4', '4', 7, 'image/png', 1866, 'code/skills/4.png', '[]', '2024-10-20 21:49:11', '2024-10-20 21:49:11', NULL, 'public'),
(36, 0, '5', '5', 7, 'image/png', 1866, 'code/skills/5.png', '[]', '2024-10-20 21:49:11', '2024-10-20 21:49:11', NULL, 'public'),
(37, 0, '6', '6', 7, 'image/png', 1866, 'code/skills/6.png', '[]', '2024-10-20 21:49:11', '2024-10-20 21:49:11', NULL, 'public'),
(38, 0, '7', '7', 7, 'image/png', 1866, 'code/skills/7.png', '[]', '2024-10-20 21:49:11', '2024-10-20 21:49:11', NULL, 'public'),
(39, 0, '8', '8', 7, 'image/png', 1866, 'code/skills/8.png', '[]', '2024-10-20 21:49:11', '2024-10-20 21:49:11', NULL, 'public'),
(40, 0, '9', '9', 7, 'image/png', 1866, 'code/skills/9.png', '[]', '2024-10-20 21:49:11', '2024-10-20 21:49:11', NULL, 'public'),
(41, 0, 'bravado', 'bravado', 8, 'image/png', 1726, 'code/companies/bravado.png', '[]', '2024-10-20 21:49:11', '2024-10-20 21:49:11', NULL, 'public'),
(42, 0, 'gocardless', 'gocardless', 8, 'image/png', 1726, 'code/companies/gocardless.png', '[]', '2024-10-20 21:49:11', '2024-10-20 21:49:11', NULL, 'public'),
(43, 0, 'google', 'google', 8, 'image/png', 1726, 'code/companies/google.png', '[]', '2024-10-20 21:49:11', '2024-10-20 21:49:11', NULL, 'public'),
(44, 0, 'intercom', 'intercom', 8, 'image/png', 1726, 'code/companies/intercom.png', '[]', '2024-10-20 21:49:11', '2024-10-20 21:49:11', NULL, 'public'),
(45, 0, 'monzo', 'monzo', 8, 'image/png', 1726, 'code/companies/monzo.png', '[]', '2024-10-20 21:49:11', '2024-10-20 21:49:11', NULL, 'public'),
(46, 0, 'samsung', 'samsung', 8, 'image/png', 1726, 'code/companies/samsung.png', '[]', '2024-10-20 21:49:12', '2024-10-20 21:49:12', NULL, 'public'),
(47, 0, 'spotify', 'spotify', 8, 'image/png', 1726, 'code/companies/spotify.png', '[]', '2024-10-20 21:49:12', '2024-10-20 21:49:12', NULL, 'public'),
(48, 0, 'stripe', 'stripe', 8, 'image/png', 1726, 'code/companies/stripe.png', '[]', '2024-10-20 21:49:12', '2024-10-20 21:49:12', NULL, 'public'),
(49, 0, 'visa', 'visa', 8, 'image/png', 1726, 'code/companies/visa.png', '[]', '2024-10-20 21:49:12', '2024-10-20 21:49:12', NULL, 'public'),
(50, 0, 'amazon', 'amazon', 9, 'image/png', 2100, 'code/experiences/amazon.png', '[]', '2024-10-20 21:49:12', '2024-10-20 21:49:12', NULL, 'public'),
(51, 0, 'google', 'google', 9, 'image/png', 2100, 'code/experiences/google.png', '[]', '2024-10-20 21:49:12', '2024-10-20 21:49:12', NULL, 'public'),
(52, 0, 'paypal', 'paypal', 9, 'image/png', 2100, 'code/experiences/paypal.png', '[]', '2024-10-20 21:49:12', '2024-10-20 21:49:12', NULL, 'public'),
(53, 0, 'x', 'x', 9, 'image/png', 2100, 'code/experiences/x.png', '[]', '2024-10-20 21:49:12', '2024-10-20 21:49:12', NULL, 'public'),
(54, 1, '3db763e6-e121-4d8b-b178-449ab9aa703b', '3db763e6-e121-4d8b-b178-449ab9aa703b', 10, 'image/png', 52415, 'users/3db763e6-e121-4d8b-b178-449ab9aa703b.png', '[]', '2024-12-07 10:46:51', '2024-12-07 10:46:51', NULL, 'public'),
(55, 1, 'Black and White Circle Business Logo', 'Black and White Circle Business Logo', 0, 'image/png', 15564, 'black-and-white-circle-business-logo.png', '[]', '2024-12-15 10:50:31', '2024-12-15 11:48:17', '2024-12-15 11:48:17', 'public'),
(56, 1, 'Black and White Circle Business Logo_prev_ui', 'Black and White Circle Business Logo_prev_ui', 0, 'image/png', 49629, 'black-and-white-circle-business-logo-prev-ui.png', '[]', '2024-12-15 10:52:55', '2024-12-15 11:48:17', '2024-12-15 11:48:17', 'public'),
(57, 1, 'Black and White Circle Business Logo (1)', 'Black and White Circle Business Logo (1)', 0, 'image/jpeg', 12522, 'black-and-white-circle-business-logo-1.jpg', '[]', '2024-12-15 11:19:53', '2024-12-15 11:48:17', '2024-12-15 11:48:17', 'public'),
(58, 1, 'Black and White Circle Business Logo (1)-1', 'Black and White Circle Business Logo (1)-1', 0, 'image/png', 5725, 'black-and-white-circle-business-logo-1-1.png', '[]', '2024-12-15 11:46:23', '2024-12-15 11:48:17', '2024-12-15 11:48:17', 'public'),
(59, 1, 'Black and White Circle Business Logo (1)-2', 'Black and White Circle Business Logo (1)-2', 0, 'image/png', 5720, 'black-and-white-circle-business-logo-1-2.png', '[]', '2024-12-15 11:48:22', '2024-12-15 11:48:22', NULL, 'public'),
(60, 1, '360_F_170932733_VOHGeaH5AjrVCXBVryEwVgwhArv2wNNH', '360_F_170932733_VOHGeaH5AjrVCXBVryEwVgwhArv2wNNH', 0, 'image/webp', 47858, '360-f-170932733-vohgeah5ajrvcxbvryewvgwharv2wnnh.webp', '[]', '2024-12-15 11:51:16', '2024-12-15 11:51:16', NULL, 'public'),
(61, 1, '257611305_391568315912249_333814', '257611305_391568315912249_333814', 0, 'image/png', 573621, '257611305-391568315912249-333814.png', '[]', '2024-12-15 11:54:46', '2024-12-15 11:54:46', NULL, 'public'),
(62, 1, 'people', 'people', 0, 'image/png', 224822, 'people.png', '[]', '2024-12-17 08:07:08', '2024-12-17 08:07:08', NULL, 'public'),
(63, 1, 'php-icon-2048x2048-zjxns1zh', 'php-icon-2048x2048-zjxns1zh', 0, 'image/png', 430029, 'php-icon-2048x2048-zjxns1zh.png', '[]', '2024-12-17 08:09:54', '2024-12-17 08:09:54', NULL, 'public'),
(64, 1, 'php_PNG29', 'php_PNG29', 0, 'image/jpeg', 12499, 'php-png29.jpg', '[]', '2024-12-17 08:11:43', '2024-12-17 08:11:43', NULL, 'public'),
(65, 1, '11-118738_php-logo-png-circle-transparent-png', '11-118738_php-logo-png-circle-transparent-png', 0, 'image/png', 46622, '11-118738-php-logo-png-circle-transparent-png.png', '[]', '2024-12-17 08:14:23', '2024-12-17 08:14:23', NULL, 'public'),
(66, 1, 'javascript-logo-editorial-illustrative-white-background-eps-download-vector-jpeg-banner-javascript-logo-editorial-illustrative-208329459', 'javascript-logo-editorial-illustrative-white-background-eps-download-vector-jpeg-banner-javascript-logo-editorial-illustrative-208329459', 0, 'image/webp', 6134, 'javascript-logo-editorial-illustrative-white-background-eps-download-vector-jpeg-banner-javascript-l.webp', '[]', '2024-12-17 08:15:40', '2024-12-17 08:15:40', NULL, 'public'),
(67, 1, 'mysql', 'mysql', 0, 'image/jpeg', 12762, 'mysql.jpg', '[]', '2024-12-17 08:17:54', '2024-12-17 08:17:54', NULL, 'public'),
(68, 1, 'react-icon-512x512-u6e60ayf', 'react-icon-512x512-u6e60ayf', 0, 'image/png', 34341, 'react-icon-512x512-u6e60ayf.png', '[]', '2024-12-17 08:19:06', '2024-12-17 08:19:06', NULL, 'public'),
(69, 1, '5', '5', 0, 'image/png', 3244, '5.png', '[]', '2024-12-17 08:19:46', '2024-12-17 08:19:46', NULL, 'public'),
(70, 1, 'Bootstrap_logo.svg', 'Bootstrap_logo.svg', 0, 'image/png', 116073, 'bootstrap-logosvg.png', '[]', '2024-12-17 08:21:38', '2024-12-17 08:21:38', NULL, 'public'),
(71, 1, 'images', 'images', 0, 'image/png', 10163, 'images.png', '[]', '2024-12-17 08:22:39', '2024-12-17 08:22:39', NULL, 'public'),
(72, 1, '5-1', '5-1', 0, 'image/png', 3244, '5-1.png', '[]', '2024-12-17 08:24:54', '2024-12-17 08:24:54', NULL, 'public'),
(73, 1, '4', '4', 0, 'image/png', 5111, '4.png', '[]', '2024-12-17 08:25:10', '2024-12-17 08:25:10', NULL, 'public'),
(74, 1, 'pngtree-mysql-database-service-code-coding-png-image_5289143', 'pngtree-mysql-database-service-code-coding-png-image_5289143', 0, 'image/png', 97685, 'pngtree-mysql-database-service-code-coding-png-image-5289143.png', '[]', '2024-12-17 08:26:41', '2024-12-17 08:26:41', NULL, 'public'),
(75, 1, 'api', 'api', 0, 'image/webp', 110662, 'api.webp', '[]', '2024-12-17 09:58:09', '2024-12-17 09:58:09', NULL, 'public'),
(76, 1, 'Capture1', 'Capture1', 0, 'image/png', 1928340, 'capture1.PNG', '[]', '2025-01-10 00:31:52', '2025-01-10 00:31:52', NULL, 'public'),
(77, 1, 'Capture2', 'Capture2', 0, 'image/png', 452249, 'capture2.PNG', '[]', '2025-01-10 00:39:22', '2025-01-10 00:39:22', NULL, 'public'),
(78, 1, 'Capture3', 'Capture3', 0, 'image/png', 514660, 'capture3.PNG', '[]', '2025-01-10 00:46:32', '2025-01-10 00:46:32', NULL, 'public'),
(79, 1, 'Capture4', 'Capture4', 0, 'image/png', 1216855, 'capture4.PNG', '[]', '2025-01-10 00:52:38', '2025-01-10 00:52:38', NULL, 'public');

-- --------------------------------------------------------

--
-- Table structure for table `media_folders`
--

CREATE TABLE `media_folders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `color` varchar(191) DEFAULT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_folders`
--

INSERT INTO `media_folders` (`id`, `user_id`, `name`, `color`, `slug`, `parent_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, 'main', NULL, 'main', 0, '2024-10-20 21:49:08', '2024-10-20 21:49:08', NULL),
(2, 0, 'posts', NULL, 'posts', 1, '2024-10-20 21:49:08', '2024-10-20 21:49:08', NULL),
(3, 0, 'avatars', NULL, 'avatars', 1, '2024-10-20 21:49:09', '2024-10-20 21:49:09', NULL),
(4, 0, 'projects', NULL, 'projects', 1, '2024-10-20 21:49:09', '2024-10-20 21:49:09', NULL),
(5, 0, 'code', NULL, 'code', 0, '2024-10-20 21:49:09', '2024-10-20 21:49:09', NULL),
(6, 0, 'general', NULL, 'general', 5, '2024-10-20 21:49:09', '2024-10-20 21:49:09', NULL),
(7, 0, 'skills', NULL, 'skills', 5, '2024-10-20 21:49:11', '2024-10-20 21:49:11', NULL),
(8, 0, 'companies', NULL, 'companies', 5, '2024-10-20 21:49:11', '2024-10-20 21:49:11', NULL),
(9, 0, 'experiences', NULL, 'experiences', 5, '2024-10-20 21:49:12', '2024-10-20 21:49:12', NULL),
(10, 1, 'users', NULL, 'users', 0, '2024-12-07 10:46:51', '2024-12-07 10:46:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_settings`
--

CREATE TABLE `media_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(120) NOT NULL,
  `value` text DEFAULT NULL,
  `media_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `slug` varchar(120) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Main Menu', 'main-menu', 'published', '2024-10-20 21:49:12', '2024-12-07 10:33:56');

-- --------------------------------------------------------

--
-- Table structure for table `menu_locations`
--

CREATE TABLE `menu_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `location` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_locations`
--

INSERT INTO `menu_locations` (`id`, `menu_id`, `location`, `created_at`, `updated_at`) VALUES
(1, 1, 'main-menu', '2024-10-20 21:49:12', '2024-10-20 21:49:12');

-- --------------------------------------------------------

--
-- Table structure for table `menu_nodes`
--

CREATE TABLE `menu_nodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `reference_id` bigint(20) UNSIGNED DEFAULT NULL,
  `reference_type` varchar(191) DEFAULT NULL,
  `url` varchar(191) DEFAULT NULL,
  `icon_font` varchar(191) DEFAULT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(191) DEFAULT NULL,
  `css_class` varchar(191) DEFAULT NULL,
  `target` varchar(20) NOT NULL DEFAULT '_self',
  `has_child` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_nodes`
--

INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 1, 'Botble\\Page\\Models\\Page', '', '', 0, 'Home', '', '_self', 0, '2024-10-20 21:49:12', '2024-12-07 10:33:56'),
(5, 1, 0, 2, 'Botble\\Page\\Models\\Page', '/services', '', 1, 'Services', '', '_self', 0, '2024-10-20 21:49:12', '2024-12-07 10:33:56'),
(6, 1, 0, 3, 'Botble\\Page\\Models\\Page', '/projects', '', 2, 'Portfolio', '', '_self', 0, '2024-10-20 21:49:12', '2024-12-07 10:33:56'),
(7, 1, 0, 4, 'Botble\\Page\\Models\\Page', '/pricing', '', 3, 'Pricing', '', '_self', 0, '2024-10-20 21:49:12', '2024-12-07 10:33:56'),
(8, 1, 0, 5, 'Botble\\Page\\Models\\Page', '/blog', '', 4, 'Blog', '', '_self', 0, '2024-10-20 21:49:12', '2024-12-07 10:33:56'),
(9, 1, 0, 6, 'Botble\\Page\\Models\\Page', '/contact', '', 5, 'Contact', '', '_self', 0, '2024-10-20 21:49:12', '2024-12-07 10:33:56');

-- --------------------------------------------------------

--
-- Table structure for table `meta_boxes`
--

CREATE TABLE `meta_boxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(191) NOT NULL,
  `meta_value` text DEFAULT NULL,
  `reference_id` bigint(20) UNSIGNED NOT NULL,
  `reference_type` varchar(120) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meta_boxes`
--

INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES
(1, 'icon', '[\"ti ti-api\"]', 1, 'Botble\\Portfolio\\Models\\Service', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(2, 'icon', '[\"ti ti-code\"]', 2, 'Botble\\Portfolio\\Models\\Service', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(3, 'icon', '[\"ti ti-device-mobile\"]', 3, 'Botble\\Portfolio\\Models\\Service', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(5, 'icon', '[\"ti ti-cloud\"]', 5, 'Botble\\Portfolio\\Models\\Service', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(6, 'icon', '[\"ti ti-database\"]', 6, 'Botble\\Portfolio\\Models\\Service', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(7, 'link', '[\"https:\\/\\/usmetrorealty.us\\/\"]', 1, 'Botble\\Portfolio\\Models\\Project', '2024-10-20 21:49:09', '2025-01-10 00:53:09'),
(8, 'github_url', '[\"https:\\/\\/github.com\\/botble\"]', 1, 'Botble\\Portfolio\\Models\\Project', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(9, 'category_ids', '[[\"1\",\"2\"]]', 1, 'Botble\\Portfolio\\Models\\Project', '2024-10-20 21:49:09', '2025-01-10 00:53:09'),
(10, 'link', '[\"https:\\/\\/ffalc.com\\/\"]', 2, 'Botble\\Portfolio\\Models\\Project', '2024-10-20 21:49:09', '2025-01-10 00:47:24'),
(11, 'github_url', '[\"https:\\/\\/github.com\\/botble\"]', 2, 'Botble\\Portfolio\\Models\\Project', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(12, 'category_ids', '[[\"1\",\"2\"]]', 2, 'Botble\\Portfolio\\Models\\Project', '2024-10-20 21:49:09', '2025-01-10 00:47:24'),
(13, 'link', '[\"https:\\/\\/tradevaly.com.bd\\/\"]', 3, 'Botble\\Portfolio\\Models\\Project', '2024-10-20 21:49:09', '2025-01-10 00:40:35'),
(14, 'github_url', '[\"https:\\/\\/github.com\\/botble\"]', 3, 'Botble\\Portfolio\\Models\\Project', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(15, 'category_ids', '[[3]]', 3, 'Botble\\Portfolio\\Models\\Project', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(16, 'link', '[\"https:\\/\\/3sagro.globalerpserver.com\\/login\"]', 4, 'Botble\\Portfolio\\Models\\Project', '2024-10-20 21:49:09', '2025-01-10 00:41:29'),
(17, 'github_url', '[\"https:\\/\\/github.com\\/botble\"]', 4, 'Botble\\Portfolio\\Models\\Project', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(18, 'category_ids', '[[4]]', 4, 'Botble\\Portfolio\\Models\\Project', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(19, 'seo_meta', '[{\"index\":\"index\"}]', 7, 'Botble\\Portfolio\\Models\\Service', '2024-12-17 09:49:25', '2024-12-17 09:49:25'),
(20, 'icon', '[\"ti ti-adjustments-bolt\"]', 7, 'Botble\\Portfolio\\Models\\Service', '2024-12-17 09:52:37', '2024-12-17 09:56:16'),
(21, 'seo_meta', '[{\"index\":\"index\"}]', 1, 'Botble\\Portfolio\\Models\\Service', '2024-12-17 09:58:22', '2024-12-17 09:58:22'),
(22, 'seo_meta', '[{\"index\":\"index\"}]', 4, 'Botble\\Portfolio\\Models\\Project', '2025-01-10 00:34:24', '2025-01-10 00:34:24'),
(23, 'seo_meta', '[{\"index\":\"index\"}]', 3, 'Botble\\Portfolio\\Models\\Project', '2025-01-10 00:39:32', '2025-01-10 00:39:32'),
(24, 'seo_meta', '[{\"index\":\"index\"}]', 2, 'Botble\\Portfolio\\Models\\Project', '2025-01-10 00:47:24', '2025-01-10 00:47:24'),
(25, 'seo_meta', '[{\"index\":\"index\"}]', 1, 'Botble\\Portfolio\\Models\\Project', '2025-01-10 00:53:09', '2025-01-10 00:53:09');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_04_09_032329_create_base_tables', 1),
(2, '2013_04_09_062329_create_revisions_table', 1),
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(5, '2015_06_18_033822_create_blog_table', 1),
(6, '2015_06_29_025744_create_audit_history', 1),
(7, '2016_05_28_112028_create_system_request_logs_table', 1),
(8, '2016_06_10_230148_create_acl_tables', 1),
(9, '2016_06_14_230857_create_menus_table', 1),
(10, '2016_06_17_091537_create_contacts_table', 1),
(11, '2016_06_28_221418_create_pages_table', 1),
(12, '2016_10_03_032336_create_languages_table', 1),
(13, '2016_10_05_074239_create_setting_table', 1),
(14, '2016_10_07_193005_create_translations_table', 1),
(15, '2016_11_28_032840_create_dashboard_widget_tables', 1),
(16, '2016_12_16_084601_create_widgets_table', 1),
(17, '2017_05_09_070343_create_media_tables', 1),
(18, '2017_10_24_154832_create_newsletter_table', 1),
(19, '2017_11_03_070450_create_slug_table', 1),
(20, '2018_07_09_214610_create_testimonial_table', 1),
(21, '2018_07_09_221238_create_faq_table', 1),
(22, '2019_01_05_053554_create_jobs_table', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(25, '2021_02_16_092633_remove_default_value_for_author_type', 1),
(26, '2021_10_25_021023_fix-priority-load-for-language-advanced', 1),
(27, '2021_12_03_030600_create_blog_translations', 1),
(28, '2021_12_03_075608_create_page_translations', 1),
(29, '2021_12_03_082134_create_faq_translations', 1),
(30, '2021_12_03_083642_create_testimonials_translations', 1),
(31, '2022_04_19_113923_add_index_to_table_posts', 1),
(32, '2022_04_20_100851_add_index_to_media_table', 1),
(33, '2022_04_20_101046_add_index_to_menu_table', 1),
(34, '2022_07_10_034813_move_lang_folder_to_root', 1),
(35, '2022_08_04_051940_add_missing_column_expires_at', 1),
(36, '2022_09_01_000001_create_admin_notifications_tables', 1),
(37, '2022_10_14_024629_drop_column_is_featured', 1),
(38, '2022_11_18_063357_add_missing_timestamp_in_table_settings', 1),
(39, '2022_12_02_093615_update_slug_index_columns', 1),
(40, '2023_01_30_024431_add_alt_to_media_table', 1),
(41, '2023_02_16_042611_drop_table_password_resets', 1),
(42, '2023_04_23_005903_add_column_permissions_to_admin_notifications', 1),
(43, '2023_05_10_075124_drop_column_id_in_role_users_table', 1),
(44, '2023_07_06_011444_create_slug_translations_table', 1),
(45, '2023_07_25_072632_create_portfolio_tables', 1),
(46, '2023_08_21_090810_make_page_content_nullable', 1),
(47, '2023_08_29_074620_make_column_author_id_nullable', 1),
(48, '2023_09_11_023233_create_pf_custom_fields_table', 1),
(49, '2023_09_13_042633_add_columns_to_pf_projects_table', 1),
(50, '2023_09_13_044041_create_pf_project_categories_table', 1),
(51, '2023_09_14_021936_update_index_for_slugs_table', 1),
(52, '2023_09_14_022423_add_index_for_language_table', 1),
(53, '2023_09_22_061723_create_custom_fields_translations_table', 1),
(54, '2023_09_22_343531_remove_project_categories_table', 1),
(55, '2023_11_05_081701_fix_projects_table', 1),
(56, '2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core', 1),
(57, '2023_11_14_033417_change_request_column_in_table_audit_histories', 1),
(58, '2023_11_17_063408_add_description_column_to_faq_categories_table', 1),
(59, '2023_12_07_095130_add_color_column_to_media_folders_table', 1),
(60, '2023_12_12_105220_drop_translations_table', 1),
(61, '2023_12_17_162208_make_sure_column_color_in_media_folders_nullable', 1),
(62, '2024_01_16_050056_create_comments_table', 1),
(63, '2024_03_20_080001_migrate_change_attribute_email_to_nullable_form_contacts_table', 1),
(64, '2024_03_25_000001_update_captcha_settings_for_contact', 1),
(65, '2024_03_25_000001_update_captcha_settings_for_newsletter', 1),
(66, '2024_04_04_110758_update_value_column_in_user_meta_table', 1),
(67, '2024_04_19_063914_create_custom_fields_table', 1),
(68, '2024_04_27_100730_improve_analytics_setting', 1),
(69, '2024_05_12_091229_add_column_visibility_to_table_media_files', 1),
(70, '2024_05_16_060328_add_projects_translations_table', 1),
(71, '2024_07_07_091316_fix_column_url_in_menu_nodes_table', 1),
(72, '2024_07_12_100000_change_random_hash_for_media', 1),
(73, '2024_07_30_091615_fix_order_column_in_categories_table', 1),
(74, '2024_09_09_075552_add_action_field_pf_packages_table', 1),
(75, '2024_09_30_024515_create_sessions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(120) NOT NULL,
  `name` varchar(120) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `content` longtext DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `template` varchar(60) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `content`, `user_id`, `image`, `template`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Home', '<shortcode>[hero-banner style=\"2\" title=\"Senior &lt;span&gt;{Full Stack}&lt;/span&gt;Web &amp; App developer\" subtitle=\"Hey,I\'m Rahman Tutul\" description=\"With expertise in cutting-edge technologies such as &lt;span&gt;PHP&lt;/span&gt;, &lt;span&gt;ReactJs&lt;/span&gt;, &lt;span&gt;MySql&lt;/span&gt;, and &lt;span&gt;Laravel&lt;/span&gt;... I deliver web solutions that are both innovative and robust.\" primary_button_text=\"Download My CV\" primary_button_link=\"/storage/main/resume/cv.pdf\" primary_button_icon=\"ti ti-download\" below_button_text=\"...and more\" quantity=\"5\" name_1=\"PHP\" image_1=\"11-118738-php-logo-png-circle-transparent-png.png\" name_2=\"JavaScript\" image_2=\"4.png\" name_3=\"MySql\" image_3=\"pngtree-mysql-database-service-code-coding-png-image-5289143.png\" name_4=\"ReactJs\" image_4=\"react-icon-512x512-u6e60ayf.png\" name_5=\"Tailwind CSS\" image_5=\"5.png\" background_image=\"code/general/hero-bg.png\" background_image_dark=\"code/general/hero-bg-dark.png\" right_image=\"people.png\" right_image_shape=\"code/general/people-shape.png\" enable_lazy_loading=\"no\"][/hero-banner]</shortcode><shortcode>[stats-counter style=\"2\" quantity=\"4\" label_1=\"Years Experience\" count_1=\"2\" icon_1=\"ti ti-crown\" label_2=\"Projects Completed\" count_2=\"15\" icon_2=\"ti ti-device-desktop\" label_3=\"On going\" count_3=\"2\" icon_3=\"ti ti-heart-spark\" label_4=\"Technologies\" count_4=\"6\" icon_4=\"ti ti-3d-rotate\" background_image=\"code/general/static-bg.png\" enable_lazy_loading=\"no\"][/stats-counter]</shortcode><shortcode>[services style=\"2\" title=\"Designing solutions &lt;span class=\'text-300\'&gt;customized&lt;br&gt;to meet your requirements&lt;/span&gt;\" subtitle=\"Cooperation\" service_ids=\"1,2,3,5,6,7\" bottom_text=\"Excited to take on &lt;span class=\'text-dark\'&gt;new projects&lt;/span&gt; and collaborate. &lt;br&gt;Let\'s chat about your ideas. &lt;a href=\'\' class=\'text-primary-2\'&gt;Reach out!&lt;/a&gt;\" enable_lazy_loading=\"yes\"][/services]</shortcode><shortcode>[projects style=\"2\" title=\"My Recent Works\" subtitle=\"Projects\" project_ids=\"1,2,3,4\" background_image=\"code/general/projects-bg.png\" enable_lazy_loading=\"yes\"][/projects]</shortcode><shortcode>[experience title=\"+12 &lt;span&gt;years of&lt;/span&gt; passion &lt;span&gt;for &lt;br /&gt; programming techniques&lt;/span&gt;\" subtitle=\"Experience\" role_title=\"Senior Software Engineer\" role_description=\"Led development of scalable web applications, &lt;span&gt;improving performance&lt;/span&gt; and user experience for millions of users. \\n Implemented machine learning algorithms to enhance search functionality. \\n Collaborated with cross-functional teams to integrate new features seamlessly.\" experiences_quantity=\"4\" experiences_date_1=\"2018 - Present\" experiences_title_1=\"Google\" experiences_logo_1=\"code/experiences/google.png\" experiences_date_2=\"2012 - 2015\" experiences_title_2=\"Twitter (X)\" experiences_logo_2=\"code/experiences/x.png\" experiences_date_3=\"2018 - Present\" experiences_title_3=\"Amazon\" experiences_logo_3=\"code/experiences/amazon.png\" experiences_date_4=\"2010 - 2012\" experiences_title_4=\"Paypal\" experiences_logo_4=\"code/experiences/paypal.png\" skills_quantity=\"5\" skills_name_1=\"Python\" skills_name_2=\"TensorFlow\" skills_name_3=\"Angular\" skills_name_4=\"Kubernetes\" skills_name_5=\"GCP\" background_image=\"code/general/services-bg.png\" enable_lazy_loading=\"yes\"][/experience]</shortcode><shortcode>[resume style=\"2\" resume_1_title=\"Education\" resume_1_title_icon=\"ti ti-school\" resume_1_quantity=\"4\" resume_1_time_1=\"2018 - 2019\" resume_1_title_1=\"Certification in UX Design\" resume_1_subtitle_1=\"University of Stanford\" resume_1_time_2=\"2017 - 2018\" resume_1_title_2=\"Certification in Web Dev\" resume_1_subtitle_2=\"University of Stanford\" resume_1_time_3=\"2014 - 2016\" resume_1_title_3=\"Advanced UX/UI Bootcamp\" resume_1_subtitle_3=\"Design Academy\" resume_1_time_4=\"2012 - 2013\" resume_1_title_4=\"Certification in Graphic Design\" resume_1_subtitle_4=\"Coursera\" resume_2_title=\"Experience\" resume_2_title_icon=\"ti ti-stars\" resume_2_quantity=\"4\" resume_2_time_1=\"2019 - Present\" resume_2_title_1=\"Senior UI/UX Designer\" resume_2_subtitle_1=\"Leader in Creative team\" resume_2_time_2=\"2016 - 2019\" resume_2_title_2=\"UI/UX Designer\" resume_2_subtitle_2=\"Tech Startup\" resume_2_time_3=\"2014 - 2016\" resume_2_title_3=\"Freelance UI/UX Designer\" resume_2_subtitle_3=\"Self-Employed\" resume_2_time_4=\"2012 - 2014\" resume_2_title_4=\"Junior UI Designer\" resume_2_subtitle_4=\"Web Solutions team\" enable_lazy_loading=\"yes\"][/resume]</shortcode><shortcode>[skills style=\"2\" title=\"My Skills\" subtitle=\"Projects\" quantity=\"9\" name_1=\"Next.js\" image_1=\"code/skills/1.png\" name_2=\"Firebase\" image_2=\"code/skills/2.png\" name_3=\"MongoDB\" image_3=\"code/skills/3.png\" name_4=\"Node.js\" image_4=\"code/skills/4.png\" name_5=\"Tailwind CSS\" image_5=\"code/skills/5.png\" name_6=\"React\" image_6=\"code/skills/6.png\" name_7=\"Vue.js\" image_7=\"code/skills/7.png\" name_8=\"Angular\" image_8=\"code/skills/8.png\" name_9=\"Laravel\" image_9=\"code/skills/9.png\" list_quantity=\"5\" list_label_1=\"Front-End\" list_content_1=\"HTML, CSS, JavaScript, React, Angular\" list_label_2=\"Back-End\" list_content_2=\"Node.js, Express, Python, Django\" list_label_3=\"Databases\" list_content_3=\"MySQL, PostgreSQL, MongoDB\" list_label_4=\"Tools &amp; Platforms\" list_content_4=\"Git, Docker, AWS, Heroku\" list_label_5=\"Others\" list_content_5=\"RESTful APIs, GraphQL, Agile Methodologies\" enable_lazy_loading=\"yes\"][/skills]</shortcode><shortcode>[blog-posts style=\"2\" paginate=\"3\" title=\"Recent blog\" subtitle=\"Latest Posts\" enable_lazy_loading=\"yes\"][/blog-posts]</shortcode><shortcode>[contact-form style=\"2\" display_fields=\"phone,email,subject,address\" mandatory_fields=\"email,subject\" title=\"Let\'s connect\" quantity=\"4\" label_1=\"Phone\" content_1=\"+1-234-567-8901\" icon_1=\"ti ti-phone\" url_1=\"tel:+1-234-567-8901\" label_2=\"Email\" content_2=\"contact@botble.com\" icon_2=\"ti ti-mail\" url_2=\"mailto:contact@botble.com\" label_3=\"X (Twitter)\" content_3=\"Botble Technologies\" icon_3=\"ti ti-user\" url_3=\"https://x.com/botble\" label_4=\"Address\" content_4=\"0811 Erdman Prairie, Joaville CA\" icon_4=\"ti ti-map\" url_4=\"https://google.com/maps\"][/contact-form]</shortcode>', 1, '257611305-391568315912249-333814.png', 'default', '', 'published', '2024-10-20 21:49:12', '2024-12-17 10:02:30'),
(2, 'Services', '[services style=&quot;4&quot; enable_lazy_loading=&quot;no&quot;][/services]', 1, NULL, 'has-heading', '\n                With expertise in mobile app and web design, I transform ideas into visually\n                stunning and user-friendly interfaces that captivate and retain users.\n                Explore my work and see design in action.', 'published', '2024-10-20 21:49:12', '2024-10-20 21:49:12'),
(3, 'Projects', '[projects style=&quot;4&quot; enable_lazy_loading=&quot;no&quot;][/projects]', 1, NULL, 'has-heading', '\n                With expertise in mobile app and web design, I transform ideas into visually\n                stunning and user-friendly interfaces that captivate and retain users.\n                Explore my work and see design in action.', 'published', '2024-10-20 21:49:12', '2024-10-20 21:49:12'),
(4, 'Pricing', '[pricing-plans package_ids=&quot;1,2&quot; enable_lazy_loading=&quot;no&quot;][/pricing-plans]\n[faqs title=&quot;Common Questions&quot; category_ids=&quot;2&quot; enable_lazy_loading=&quot;no&quot;][/faqs]', 1, NULL, 'has-heading', 'Flexible Plans Tailored to Meet Your Unique Needs, Ensuring High-Quality Services\n                Without Breaking the Bank', 'published', '2024-10-20 21:49:12', '2024-10-20 21:49:12'),
(5, 'Blog', '', 1, NULL, 'has-heading', 'Discover key insights and emerging trends shaping the future of design: a detailed\n                examination of how these innovations are reshaping our industry', 'published', '2024-10-20 21:49:12', '2024-10-20 21:49:12'),
(6, 'Contact', '[contact-form style=&quot;2&quot; display_fields=&quot;phone,email,subject,address&quot; mandatory_fields=&quot;email,subject&quot; title=&quot;Let&#039;s connect&quot; quantity=&quot;4&quot; label_1=&quot;Phone&quot; content_1=&quot;+1-234-567-8901&quot; icon_1=&quot;ti ti-phone&quot; url_1=&quot;tel:+1-234-567-8901&quot; label_2=&quot;Email&quot; content_2=&quot;contact@botble.com&quot; icon_2=&quot;ti ti-mail&quot; url_2=&quot;mailto:contact@botble.com&quot; label_3=&quot;X (Twitter)&quot; content_3=&quot;Botble Technologies&quot; icon_3=&quot;ti ti-user&quot; url_3=&quot;https://x.com/botble&quot; label_4=&quot;Address&quot; content_4=&quot;0811 Erdman Prairie, Joaville CA&quot; icon_4=&quot;ti ti-map&quot; url_4=&quot;https://google.com/maps&quot;][/contact-form]', 1, NULL, 'has-heading', NULL, 'published', '2024-10-20 21:49:12', '2024-10-20 21:49:12'),
(7, 'Cookie Policy', '<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>', 1, NULL, 'has-heading', NULL, 'published', '2024-10-20 21:49:12', '2024-10-20 21:49:12');

-- --------------------------------------------------------

--
-- Table structure for table `pages_translations`
--

CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) NOT NULL,
  `pages_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pf_custom_fields`
--

CREATE TABLE `pf_custom_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `author_type` varchar(191) NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `placeholder` varchar(191) DEFAULT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `type` varchar(60) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 999,
  `status` varchar(191) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pf_custom_fields_translations`
--

CREATE TABLE `pf_custom_fields_translations` (
  `lang_code` varchar(191) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `placeholder` varchar(191) DEFAULT NULL,
  `type` varchar(60) DEFAULT NULL,
  `pf_custom_fields_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pf_custom_field_options`
--

CREATE TABLE `pf_custom_field_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `custom_field_id` bigint(20) UNSIGNED NOT NULL,
  `label` varchar(191) DEFAULT NULL,
  `value` varchar(191) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 999,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pf_custom_field_options_translations`
--

CREATE TABLE `pf_custom_field_options_translations` (
  `lang_code` varchar(191) NOT NULL,
  `label` varchar(191) DEFAULT NULL,
  `value` varchar(191) DEFAULT NULL,
  `pf_custom_field_options_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pf_packages`
--

CREATE TABLE `pf_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` text NOT NULL,
  `price` varchar(191) NOT NULL,
  `annual_price` varchar(191) DEFAULT NULL,
  `duration` varchar(191) NOT NULL DEFAULT 'monthly',
  `features` text DEFAULT NULL,
  `status` varchar(191) NOT NULL DEFAULT 'published',
  `is_popular` tinyint(1) NOT NULL DEFAULT 0,
  `action_label` varchar(191) DEFAULT NULL,
  `action_url` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pf_packages`
--

INSERT INTO `pf_packages` (`id`, `name`, `description`, `content`, `price`, `annual_price`, `duration`, `features`, `status`, `is_popular`, `action_label`, `action_url`, `created_at`, `updated_at`) VALUES
(1, 'Basic', 'For small businesses and startups.', '', '$49', NULL, 'hourly', 'Require your wireframe\nDesign using Figma, Framer\nDevelop with Webflow, React, WordPress, Laravel/PHP\nRemote/Online collaboration\nAvailable on business days, no weekends\n6 months of support', 'published', 0, 'Get Started', '/contact', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(2, 'Business', 'For growing businesses and agencies.', '', '$99', NULL, 'hourly', 'No wireframe needed\nDesign using Figma, Framer\nDevelop with Webflow, React, WordPress, Laravel/PHP\nRemote/Online collaboration\nAvailable on business days, no weekends\n12 months of support\nYour project is always a priority\nCustomer care gifts included', 'published', 0, 'Get Started', '/contact', '2024-10-20 21:49:09', '2024-10-20 21:49:09');

-- --------------------------------------------------------

--
-- Table structure for table `pf_packages_translations`
--

CREATE TABLE `pf_packages_translations` (
  `lang_code` varchar(191) NOT NULL,
  `pf_packages_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `price` varchar(191) DEFAULT NULL,
  `annual_price` varchar(191) DEFAULT NULL,
  `features` text DEFAULT NULL,
  `action_label` varchar(191) DEFAULT NULL,
  `action_url` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pf_projects`
--

CREATE TABLE `pf_projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL,
  `client` varchar(255) DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `image` varchar(191) DEFAULT NULL,
  `images` text DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pf_projects`
--

INSERT INTO `pf_projects` (`id`, `name`, `description`, `content`, `place`, `client`, `is_featured`, `image`, `images`, `views`, `status`, `created_at`, `updated_at`, `author`, `start_date`) VALUES
(1, 'Property Agency', 'The website offers advanced functionalities, including integration with external property market', '<p><strong>US Metro Realty</strong> is a robust property management platform designed for property agents, buyers, and sellers to seamlessly browse, list, and manage real estate properties. The website offers advanced functionalities, including integration with external property market APIs, multiple user roles with distinct dashboards, a sophisticated advanced searching system, and real-time communication features. It’s a comprehensive solution for streamlining property transactions and enhancing user engagement.</p><h3><strong>Key Features</strong></h3><ul><li><strong>Advanced Searching System</strong>:<ul><li><strong>Dynamic Filters</strong>: Refine search results by property type, location, price range, area size, bedrooms, and more.</li><li><strong>Keyword Search</strong>: Search by specific terms like \"luxury apartment\" or \"ocean view.\"</li><li><strong>Interactive Map Search</strong>: Visualize property locations on a live map for better insights.</li><li><strong>API-Integrated Search</strong>: Fetch up-to-date listings from external property APIs.</li><li><strong>Saved Searches &amp; Alerts</strong>: Users can save search criteria and receive alerts for matching properties.</li><li><strong>Real-Time Updates</strong>: Results dynamically update without refreshing the page.</li></ul></li><li><strong>Property Listings from API</strong>: Displays real estate properties fetched dynamically from external market APIs, ensuring up-to-date data.</li><li><strong>User-Generated Listings</strong>: Enables users to create, manage, and publish their property listings.</li><li><strong>Four User Roles with Dashboards</strong>:<ul><li><strong>Admin</strong>: Oversees the platform, manages users, and moderates listings.</li><li><strong>Agents</strong>: Dedicated tools to manage property portfolios and client interactions.</li><li><strong>Buyers/Sellers</strong>: Personalized dashboards for inquiries and transactions.</li><li><strong>Guest Users</strong>: Limited browsing with contact options for agents.</li></ul></li><li><strong>Live Chat with Livewire</strong>: Real-time chat feature for seamless communication between buyers, sellers, and agents.</li><li><strong>Intercommunication</strong>: Direct messaging across all user roles for enhanced collaboration.</li><li><strong>Search and Filtering</strong>: Tailored search options with various filters for efficient property discovery.</li></ul><h3><strong>Technologies Used</strong></h3><ul><li><strong>Front-End</strong>: Blade Templates, Bootstrap for responsive design, and interactive elements.</li><li><strong>Back-End</strong>: Laravel for secure, scalable server-side logic and API integration.</li><li><strong>Database</strong>: MySQL for structured data management and efficient querying.</li><li><strong>Real-Time Updates</strong>: Livewire and WebSockets for dynamic interactions and notifications.</li><li><strong>Search Optimization</strong>: Elasticsearch or Algolia for fast, accurate searching capabilities.</li><li><strong>API Integration</strong>: Seamless fetching of property data through external APIs.</li></ul><h3><strong>Design Highlights</strong></h3><ul><li><strong>Modern Interface</strong>: Clean, professional design for intuitive user interaction.</li><li><strong>Custom Dashboards</strong>: User-specific dashboards with role-based functionalities.</li><li><strong>Optimized Performance</strong>: Fast page loads and efficient data retrieval from APIs and databases.</li></ul><h3><strong>Impact</strong></h3><p>With its <strong>Advanced Searching System</strong>, personalized dashboards, and real-time communication, <strong>US Metro Realty</strong> redefines property management by providing a secure, interactive, and user-friendly platform. It bridges the gap between buyers, sellers, and agents, making property transactions seamless, transparent, and efficient.</p>', NULL, 'Corporate Client', 1, 'capture4.PNG', NULL, 7674, 'published', '2024-10-20 21:49:09', '2025-01-10 00:53:09', NULL, '2023-06-01'),
(2, 'Gamming Asset Vendor', 'The platform offers a seamless and secure environment for buying and selling in-game assets', '<div class=\"flex max-w-full flex-col flex-grow\"><div class=\"min-h-8 text-message flex w-full flex-col items-end gap-2 whitespace-normal break-words text-start [.text-message+&amp;]:mt-5\" data-message-author-role=\"assistant\" data-message-id=\"43287d87-4a7d-46f9-bfab-31382a6c695a\" dir=\"auto\" data-message-model-slug=\"gpt-4o\"><div class=\"flex w-full flex-col gap-1 empty:hidden first:pt-[3px]\"><div class=\"markdown prose w-full break-words dark:prose-invert dark\"><p><strong>FFALC</strong> is an innovative gaming asset marketplace tailored for gamers who play titles like <strong>Free Fire</strong>, <strong>PUBG</strong>, and other popular games. The platform offers a seamless and secure environment for buying and selling in-game assets such as diamonds, UC (Unknown Cash), and other gaming currencies. It combines convenience, functionality, and security, making it the ultimate destination for gaming enthusiasts.</p><h3><strong>Key Features</strong></h3><ul><li><strong>Gaming Asset Marketplace</strong>: Facilitates the purchase and sale of in-game currencies like diamonds and UC, enabling gamers to enhance their experience effortlessly.</li><li><strong>Wallet System</strong>: Integrated wallet functionality allows users to load funds, track transactions, and make purchases seamlessly.</li><li><strong>Secure Payment Gateway</strong>: Supports multiple payment options for safe and hassle-free transactions, including credit/debit cards, mobile banking, and digital wallets.</li><li><strong>Live Chat Support</strong>: Real-time chat feature enables users to connect with customer support for instant assistance.</li><li><strong>User Dashboard</strong>: A feature-rich dashboard where users can manage orders, view transaction history, and monitor their account activity.</li><li><strong>Order Tracking</strong>: Provides real-time updates on asset delivery status for a transparent user experience.</li><li><strong>Promotions and Discounts</strong>: Offers exclusive deals, discounts, and promotional campaigns to attract and retain users.</li></ul><h3><strong>Technologies Used</strong></h3><ul><li><strong>Front-End</strong>: Built using <strong>React.js</strong> for a dynamic and responsive user interface.</li><li><strong>Back-End</strong>: Developed with <strong>Laravel</strong>, ensuring robust and scalable server-side operations.</li><li><strong>Database</strong>: MySQL for secure and efficient data storage and management.</li><li><strong>Payment Gateway Integration</strong>: Supports multiple gateways such as <strong>Stripe</strong>, <strong>PayPal</strong>, and local payment methods for flexibility.</li><li><strong>Real-Time Communication</strong>: Integrated <strong>WebSocket</strong> technology for live chat and instant notifications.</li></ul><h3><strong>Design Highlights</strong></h3><ul><li><strong>Gaming-Inspired Aesthetic</strong>: A visually appealing design that resonates with the gaming community, featuring vibrant colors and engaging UI elements.</li><li><strong>Responsive and Fast</strong>: Optimized for desktop and mobile devices, ensuring a smooth user experience on all platforms.</li><li><strong>User-Friendly Navigation</strong>: Intuitive design for easy access to key features like wallet, orders, and support.</li></ul><h3><strong>Impact</strong></h3><p><strong>FFALC</strong> enhances the gaming experience by providing a one-stop solution for acquiring in-game assets. Its secure and feature-rich platform builds trust among gamers, making it a go-to destination for competitive and casual players alike. The integration of wallet systems and live chat ensures convenience and engagement, fostering a thriving gaming community.</p></div></div></div></div>', NULL, 'Education Startup', 1, 'capture3.PNG', NULL, 253, 'published', '2024-10-20 21:49:09', '2025-01-10 00:47:24', NULL, '2023-03-15'),
(3, 'B2B Business solution For traders', 'This is a B2B business communication website/', '<p><strong>Tradevaly Bangladesh</strong> is a dynamic B2B marketplace designed to connect buyers and suppliers across a wide range of industries. This platform facilitates seamless trade by providing a centralized space for businesses to discover, connect, and collaborate. As the developer of this website, the focus was on creating a robust, scalable, and user-friendly solution that enhances the trading experience for businesses in Bangladesh and beyond.</p><h3><strong>Key Features</strong></h3><ul><li><strong>Comprehensive Product Listings</strong>: Designed an organized catalog that allows suppliers to showcase their products with detailed descriptions, images, and pricing, making it easier for buyers to make informed decisions.</li><li><strong>Advanced Search and Filtering</strong>: Implemented a powerful search engine with filters for category, location, price, and supplier ratings, enabling users to find relevant products and suppliers quickly.</li><li><strong>User Management</strong>: Developed a role-based system for managing buyers, sellers, and administrators, ensuring secure access and streamlined operations.</li><li><strong>Supplier Verification</strong>: Integrated a verification system to build trust between buyers and suppliers by ensuring supplier authenticity and reliability.</li><li><strong>Secure Messaging</strong>: Added an in-platform messaging system for secure and efficient communication between buyers and suppliers.</li><li><strong>Order Management</strong>: Provided tools for managing inquiries, placing orders, and tracking transactions seamlessly.</li><li><strong>Responsive Design</strong>: Ensured the platform is fully responsive and optimized for desktops, tablets, and smartphones.</li><li><strong>Multi-Language Support</strong>: Included language options to cater to a diverse user base, improving accessibility and usability.</li></ul><h3><strong>Technologies Used</strong></h3><ul><li><strong>Front-End</strong>: Developed using <strong>HTML CSS</strong> for an interactive and responsive user interface.</li><li><strong>Back-End</strong>: Built on <strong>Laravel</strong>, ensuring robust server-side operations and API development.</li><li><strong>Database</strong>: MySQL for secure and efficient data management.</li><li><strong>Hosting</strong>: Deployed on a cloud-based hosting solution to ensure scalability and reliability.</li><li><strong>APIs</strong>: Integrated third-party APIs for payment processing, shipping, and analytics.</li></ul><h3><strong>Design Highlights</strong></h3><ul><li><strong>User-Friendly Interface</strong>: Focused on creating an intuitive design that allows users to navigate through products and categories effortlessly.</li><li><strong>Professional Aesthetic</strong>: Leveraged modern UI/UX principles to ensure the platform\'s design reflects professionalism and trustworthiness.</li><li><strong>Performance Optimization</strong>: Implemented caching, lazy loading, and database optimizations to ensure fast page load times even with high traffic.</li></ul><h3><strong>Impact</strong></h3><p><strong>Tradevaly Bangladesh</strong> empowers businesses to expand their reach, improve trade efficiency, and foster strong partnerships. The platform serves as a bridge between buyers and suppliers, streamlining the trading process and contributing to the growth of B2B commerce in Bangladesh.</p>', NULL, 'Finance Company', 1, 'capture2.PNG', NULL, 6716, 'published', '2024-10-20 21:49:09', '2025-01-10 00:42:20', NULL, '2022-09-10'),
(4, 'Full functional ERP system', 'Full functional ERP System including HRM, CRM, Inventory, Accounts', '<div class=\"flex max-w-full flex-col flex-grow\"><div class=\"min-h-8 text-message flex w-full flex-col items-end gap-2 whitespace-normal break-words text-start [.text-message+&amp;]:mt-5\"><div class=\"flex w-full flex-col gap-1 empty:hidden first:pt-[3px]\"><div class=\"markdown prose w-full break-words dark:prose-invert dark\"><p><strong>ERP</strong> is a robust and comprehensive Enterprise Resource Planning (ERP) system designed to streamline and automate business operations across various departments. The project focused on creating a user-friendly and highly customizable platform to help businesses improve efficiency, make data-driven decisions, and achieve organizational goals. The system integrates essential modules such as inventory, sales, finance, human resources, and customer relationship management into a unified platform.</p><h3><strong>Key Features</strong></h3><ul><li><strong>Centralized Dashboard</strong>: Designed an intuitive and centralized dashboard that provides a real-time overview of key business metrics, enabling quick and informed decision-making.</li><li><strong>Modular Architecture</strong>: Developed a flexible, modular system that allows businesses to enable or disable features based on their unique requirements.</li><li><strong>Inventory Management</strong>: Implemented an inventory module for tracking stock levels, automating reorders, and generating reports to minimize wastage and overstocking.</li><li><strong>Finance &amp; Accounting</strong>: Integrated financial tools for budget planning, expense tracking, payroll processing, and generating detailed financial reports.</li><li><strong>Sales and CRM</strong>: Created a sales and CRM module to manage leads, track customer interactions, and monitor sales pipelines effectively.</li><li><strong>Human Resource Management</strong>: Added an HR module for employee management, attendance tracking, leave requests, and payroll integration.</li><li><strong>Role-Based Access Control</strong>: Implemented secure access controls, ensuring that only authorized users can view or edit sensitive data.</li><li><strong>Data Analytics</strong>: Embedded advanced reporting and analytics to provide actionable insights and improve operational efficiency.</li></ul><h3><strong>Technologies Used</strong></h3><ul><li><strong>Front-End</strong>: React.js for a modern and responsive user interface, ensuring seamless navigation and interaction.</li><li><strong>Back-End</strong>: Laravel for robust server-side processing and API development.</li><li><strong>Database</strong>: MySQL for structured and reliable data storage.</li><li><strong>APIs</strong>: Integrated third-party APIs for enhanced functionality, such as tax calculations, payment gateways, and email notifications.</li><li><strong>Cloud Hosting</strong>: cPanel for scalability and reliable performance.</li></ul><h3><strong>Design Highlights</strong></h3><ul><li><strong>User-Focused Design</strong>: Created a clean and structured interface, prioritizing usability and minimizing the learning curve for new users.</li><li><strong>Customizable Workflow</strong>: Designed the system to accommodate customizable workflows, aligning with diverse business needs.</li><li><strong>Responsive Design</strong>: Ensured compatibility across desktops, tablets, and mobile devices for consistent user experience.</li><li><strong>Data Security</strong>: Followed industry best practices for data encryption, backups, and compliance with GDPR and other data protection regulations.</li></ul><p><strong>ERP</strong> simplifies complex business operations into a cohesive system, helping organizations save time, reduce costs, and drive growth effectively.</p></div></div></div></div>', NULL, 'Tech Company', 0, 'capture1.PNG', NULL, 2309, 'published', '2024-10-20 21:49:09', '2025-01-10 00:41:59', NULL, '2023-04-20');

-- --------------------------------------------------------

--
-- Table structure for table `pf_projects_translations`
--

CREATE TABLE `pf_projects_translations` (
  `lang_code` varchar(191) NOT NULL,
  `pf_projects_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pf_quotes`
--

CREATE TABLE `pf_quotes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `message` text NOT NULL,
  `fields` text DEFAULT NULL,
  `status` varchar(191) NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pf_services`
--

CREATE TABLE `pf_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `image` varchar(191) DEFAULT NULL,
  `images` text DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pf_services`
--

INSERT INTO `pf_services` (`id`, `category_id`, `name`, `description`, `content`, `is_featured`, `image`, `images`, `views`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'API Development', 'Designing and developing scalable RESTful APIs for web and mobile applications.', '<h5 class=\"fs-5 fw-medium\">Description</h5><p class=\"text-300\">Travila is a comprehensive travel booking app designed to provide users with a seamless and enjoyable booking experience. The project involved creating an intuitive and visually appealing user interface, ensuring that users can effortlessly book flights, hotels, and car rentals all within a single app. The primary goal was to enhance the overall user experience, making travel planning easy and enjoyable.</p><h5 class=\"fs-5 fw-medium mt-4\">Key Features</h5><ul><li><p class=\"text-dark fw-bold\">User-Centric Interface: <span class=\"text-300 fw-medium\">Designed a clean and intuitive interface that allows users to navigate through the app with ease, ensuring a smooth and enjoyable booking process.</span></p></li><li><p class=\"text-dark fw-bold\">Integrated Search and Booking: <span class=\"text-300 fw-medium\">Developed an integrated search function that enables users to find and book flights, hotels, and car rentals quickly and efficiently.</span></p></li><li><p class=\"text-dark fw-bold\">Personalized Recommendations: <span class=\"text-300 fw-medium\">Implemented a recommendation system that suggests destinations, accommodations, and activities based on user preferences and past behaviors.</span></p></li><li><p class=\"text-dark fw-bold\">Secure Payment Gateway: <span class=\"text-300 fw-medium\">Integrated a secure payment gateway to ensure that all transactions </span><span class=\"text-300 fw-medium text-dark fw-bold\">are safe and user data is protected.</span><span class=\"text-300 fw-medium\">&nbsp;</span></p></li><li><p class=\"text-dark fw-bold\">Interactive Maps: <span class=\"text-300 fw-medium\">Added interactive maps to help users explore destinations, find nearby attractions, and get directions.</span></p></li></ul><h5 class=\"fs-5 fw-medium mt-4\">Technologies Used</h5><ul><li><p class=\"text-dark fw-bold\">Front-End: <span class=\"text-300 fw-medium\">React Native for cross-platform mobile development, ensuring a consistent experience on both iOS and Android devices.</span></p></li><li><p class=\"text-dark fw-bold\">Back-End: <span class=\"text-300 fw-medium\">Node.js and Express for handling server-side logic and database interactions.</span></p></li><li><p class=\"text-dark fw-bold\">Database: <span class=\"text-300 fw-medium\">MongoDB for flexible data storage and retrieval.</span></p></li><li><p class=\"text-dark fw-bold\">APIs: <span class=\"text-300 fw-medium\">Integrated third-party APIs for flight, hotel, and car rental bookings to provide a wide range of options to users.</span></p></li><li><p class=\"text-dark fw-bold\">Payment Integration: <span class=\"text-300 fw-medium\">Stripe API for secure and reliable payment processing.</span></p></li></ul><h5 class=\"fs-5 fw-medium mt-4\">Design Highlights</h5><ul><li><p class=\"text-dark fw-bold\">Visual Appeal: <span class=\"text-300 fw-medium\">Focused on a visually appealing design with high-quality images and a modern color palette to enhance user engagement.</span></p></li><li><p class=\"text-dark fw-bold\">Usability: <span class=\"text-300 fw-medium\">Ensured the app is user-friendly with clear icons, concise labels, and a straightforward navigation structure.</span></p></li><li><p class=\"text-dark fw-bold\">Responsive Design: <span class=\"text-300 fw-medium\">Made the app responsive to different screen sizes and orientations, providing a consistent user experience across various devices.</span></p></li></ul>', 0, 'api.webp', NULL, 1238, 'published', '2024-10-20 21:49:09', '2024-12-17 09:58:22'),
(2, 0, 'Frontend Development', 'Creating dynamic and interactive web pages using React, Vue, and other modern JS frameworks.', '<h5 class=\"fs-5 fw-medium\">Description</h5>\n<p class=\"text-300\">Travila is a comprehensive travel booking app designed to provide users with a seamless and enjoyable booking experience. The project involved creating an intuitive and visually appealing user interface, ensuring that users can effortlessly book flights, hotels, and car rentals all within a single app. The primary goal was to enhance the overall user experience, making travel planning easy and enjoyable.</p>\n<h5 class=\"fs-5 fw-medium mt-4\">Key Features</h5>\n<ul>\n    <li>\n        <p class=\"text-dark fw-bold\">User-Centric Interface: <span class=\"text-300 fw-medium\">Designed a clean and intuitive interface that allows users to navigate through the app with ease, ensuring a smooth and enjoyable booking process.</span></p>\n    </li>\n    <li>\n        <p class=\"text-dark fw-bold\">Integrated Search and Booking: <span class=\"text-300 fw-medium\">Developed an integrated search function that enables users to find and book flights, hotels, and car rentals quickly and efficiently.</span></p>\n    </li>\n    <li>\n        <p class=\"text-dark fw-bold\">Personalized Recommendations: <span class=\"text-300 fw-medium\">Implemented a recommendation system that suggests destinations, accommodations, and activities based on user preferences and past behaviors.</span></p>\n    </li>\n    <li>\n        <p class=\"text-dark fw-bold\">\n            Secure Payment Gateway: <span class=\"text-300 fw-medium\">Integrated a secure payment gateway to ensure that all transactions <span class=\"text-dark fw-bold\">are safe and user data is protected.</span></span>\n        </p>\n    </li>\n    <li>\n        <p class=\"text-dark fw-bold\">Interactive Maps: <span class=\"text-300 fw-medium\">Added interactive maps to help users explore destinations, find nearby attractions, and get directions.</span></p>\n    </li>\n</ul>\n<h5 class=\"fs-5 fw-medium mt-4\">Technologies Used</h5>\n<ul>\n    <li>\n        <p class=\"text-dark fw-bold\">Front-End: <span class=\"text-300 fw-medium\">React Native for cross-platform mobile development, ensuring a consistent experience on both iOS and Android devices.</span></p>\n    </li>\n    <li>\n        <p class=\"text-dark fw-bold\">Back-End: <span class=\"text-300 fw-medium\">Node.js and Express for handling server-side logic and database interactions.</span></p>\n    </li>\n    <li>\n        <p class=\"text-dark fw-bold\">Database: <span class=\"text-300 fw-medium\">MongoDB for flexible data storage and retrieval.</span></p>\n    </li>\n    <li>\n        <p class=\"text-dark fw-bold\">APIs: <span class=\"text-300 fw-medium\">Integrated third-party APIs for flight, hotel, and car rental bookings to provide a wide range of options to users.</span></p>\n    </li>\n    <li>\n        <p class=\"text-dark fw-bold\">Payment Integration: <span class=\"text-300 fw-medium\">Stripe API for secure and reliable payment processing.</span></p>\n    </li>\n</ul>\n<h5 class=\"fs-5 fw-medium mt-4\">Design Highlights</h5>\n<ul>\n    <li>\n        <p class=\"text-dark fw-bold\">Visual Appeal: <span class=\"text-300 fw-medium\">Focused on a visually appealing design with high-quality images and a modern color palette to enhance user engagement.</span></p>\n    </li>\n    <li>\n        <p class=\"text-dark fw-bold\">Usability: <span class=\"text-300 fw-medium\">Ensured the app is user-friendly with clear icons, concise labels, and a straightforward navigation structure.</span></p>\n    </li>\n    <li>\n        <p class=\"text-dark fw-bold\">Responsive Design: <span class=\"text-300 fw-medium\">Made the app responsive to different screen sizes and orientations, providing a consistent user experience across various devices.</span></p>\n    </li>\n</ul>\n', 1, NULL, NULL, 8256, 'published', '2024-10-20 21:49:09', '2024-12-17 09:35:32'),
(3, 2, 'Mobile App Development', 'Building cross-platform mobile applications using Flutter and React Native.', '<h5 class=\"fs-5 fw-medium\">Description</h5>\n<p class=\"text-300\">Travila is a comprehensive travel booking app designed to provide users with a seamless and enjoyable booking experience. The project involved creating an intuitive and visually appealing user interface, ensuring that users can effortlessly book flights, hotels, and car rentals all within a single app. The primary goal was to enhance the overall user experience, making travel planning easy and enjoyable.</p>\n<h5 class=\"fs-5 fw-medium mt-4\">Key Features</h5>\n<ul>\n    <li>\n        <p class=\"text-dark fw-bold\">User-Centric Interface: <span class=\"text-300 fw-medium\">Designed a clean and intuitive interface that allows users to navigate through the app with ease, ensuring a smooth and enjoyable booking process.</span></p>\n    </li>\n    <li>\n        <p class=\"text-dark fw-bold\">Integrated Search and Booking: <span class=\"text-300 fw-medium\">Developed an integrated search function that enables users to find and book flights, hotels, and car rentals quickly and efficiently.</span></p>\n    </li>\n    <li>\n        <p class=\"text-dark fw-bold\">Personalized Recommendations: <span class=\"text-300 fw-medium\">Implemented a recommendation system that suggests destinations, accommodations, and activities based on user preferences and past behaviors.</span></p>\n    </li>\n    <li>\n        <p class=\"text-dark fw-bold\">\n            Secure Payment Gateway: <span class=\"text-300 fw-medium\">Integrated a secure payment gateway to ensure that all transactions <span class=\"text-dark fw-bold\">are safe and user data is protected.</span></span>\n        </p>\n    </li>\n    <li>\n        <p class=\"text-dark fw-bold\">Interactive Maps: <span class=\"text-300 fw-medium\">Added interactive maps to help users explore destinations, find nearby attractions, and get directions.</span></p>\n    </li>\n</ul>\n<h5 class=\"fs-5 fw-medium mt-4\">Technologies Used</h5>\n<ul>\n    <li>\n        <p class=\"text-dark fw-bold\">Front-End: <span class=\"text-300 fw-medium\">React Native for cross-platform mobile development, ensuring a consistent experience on both iOS and Android devices.</span></p>\n    </li>\n    <li>\n        <p class=\"text-dark fw-bold\">Back-End: <span class=\"text-300 fw-medium\">Node.js and Express for handling server-side logic and database interactions.</span></p>\n    </li>\n    <li>\n        <p class=\"text-dark fw-bold\">Database: <span class=\"text-300 fw-medium\">MongoDB for flexible data storage and retrieval.</span></p>\n    </li>\n    <li>\n        <p class=\"text-dark fw-bold\">APIs: <span class=\"text-300 fw-medium\">Integrated third-party APIs for flight, hotel, and car rental bookings to provide a wide range of options to users.</span></p>\n    </li>\n    <li>\n        <p class=\"text-dark fw-bold\">Payment Integration: <span class=\"text-300 fw-medium\">Stripe API for secure and reliable payment processing.</span></p>\n    </li>\n</ul>\n<h5 class=\"fs-5 fw-medium mt-4\">Design Highlights</h5>\n<ul>\n    <li>\n        <p class=\"text-dark fw-bold\">Visual Appeal: <span class=\"text-300 fw-medium\">Focused on a visually appealing design with high-quality images and a modern color palette to enhance user engagement.</span></p>\n    </li>\n    <li>\n        <p class=\"text-dark fw-bold\">Usability: <span class=\"text-300 fw-medium\">Ensured the app is user-friendly with clear icons, concise labels, and a straightforward navigation structure.</span></p>\n    </li>\n    <li>\n        <p class=\"text-dark fw-bold\">Responsive Design: <span class=\"text-300 fw-medium\">Made the app responsive to different screen sizes and orientations, providing a consistent user experience across various devices.</span></p>\n    </li>\n</ul>\n', 1, NULL, NULL, 4686, 'published', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(5, 2, 'Cloud Integration', 'Seamlessly integrating applications with cloud services like AWS, Azure, and Google Cloud.', '<h5 class=\"fs-5 fw-medium\">Description</h5>\n<p class=\"text-300\">Travila is a comprehensive travel booking app designed to provide users with a seamless and enjoyable booking experience. The project involved creating an intuitive and visually appealing user interface, ensuring that users can effortlessly book flights, hotels, and car rentals all within a single app. The primary goal was to enhance the overall user experience, making travel planning easy and enjoyable.</p>\n<h5 class=\"fs-5 fw-medium mt-4\">Key Features</h5>\n<ul>\n    <li>\n        <p class=\"text-dark fw-bold\">User-Centric Interface: <span class=\"text-300 fw-medium\">Designed a clean and intuitive interface that allows users to navigate through the app with ease, ensuring a smooth and enjoyable booking process.</span></p>\n    </li>\n    <li>\n        <p class=\"text-dark fw-bold\">Integrated Search and Booking: <span class=\"text-300 fw-medium\">Developed an integrated search function that enables users to find and book flights, hotels, and car rentals quickly and efficiently.</span></p>\n    </li>\n    <li>\n        <p class=\"text-dark fw-bold\">Personalized Recommendations: <span class=\"text-300 fw-medium\">Implemented a recommendation system that suggests destinations, accommodations, and activities based on user preferences and past behaviors.</span></p>\n    </li>\n    <li>\n        <p class=\"text-dark fw-bold\">\n            Secure Payment Gateway: <span class=\"text-300 fw-medium\">Integrated a secure payment gateway to ensure that all transactions <span class=\"text-dark fw-bold\">are safe and user data is protected.</span></span>\n        </p>\n    </li>\n    <li>\n        <p class=\"text-dark fw-bold\">Interactive Maps: <span class=\"text-300 fw-medium\">Added interactive maps to help users explore destinations, find nearby attractions, and get directions.</span></p>\n    </li>\n</ul>\n<h5 class=\"fs-5 fw-medium mt-4\">Technologies Used</h5>\n<ul>\n    <li>\n        <p class=\"text-dark fw-bold\">Front-End: <span class=\"text-300 fw-medium\">React Native for cross-platform mobile development, ensuring a consistent experience on both iOS and Android devices.</span></p>\n    </li>\n    <li>\n        <p class=\"text-dark fw-bold\">Back-End: <span class=\"text-300 fw-medium\">Node.js and Express for handling server-side logic and database interactions.</span></p>\n    </li>\n    <li>\n        <p class=\"text-dark fw-bold\">Database: <span class=\"text-300 fw-medium\">MongoDB for flexible data storage and retrieval.</span></p>\n    </li>\n    <li>\n        <p class=\"text-dark fw-bold\">APIs: <span class=\"text-300 fw-medium\">Integrated third-party APIs for flight, hotel, and car rental bookings to provide a wide range of options to users.</span></p>\n    </li>\n    <li>\n        <p class=\"text-dark fw-bold\">Payment Integration: <span class=\"text-300 fw-medium\">Stripe API for secure and reliable payment processing.</span></p>\n    </li>\n</ul>\n<h5 class=\"fs-5 fw-medium mt-4\">Design Highlights</h5>\n<ul>\n    <li>\n        <p class=\"text-dark fw-bold\">Visual Appeal: <span class=\"text-300 fw-medium\">Focused on a visually appealing design with high-quality images and a modern color palette to enhance user engagement.</span></p>\n    </li>\n    <li>\n        <p class=\"text-dark fw-bold\">Usability: <span class=\"text-300 fw-medium\">Ensured the app is user-friendly with clear icons, concise labels, and a straightforward navigation structure.</span></p>\n    </li>\n    <li>\n        <p class=\"text-dark fw-bold\">Responsive Design: <span class=\"text-300 fw-medium\">Made the app responsive to different screen sizes and orientations, providing a consistent user experience across various devices.</span></p>\n    </li>\n</ul>\n', 0, NULL, NULL, 7393, 'published', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(6, 1, 'Database Management', 'Managing and optimizing relational and non-relational databases for high performance.', '<h5 class=\"fs-5 fw-medium\">Description</h5>\n<p class=\"text-300\">Travila is a comprehensive travel booking app designed to provide users with a seamless and enjoyable booking experience. The project involved creating an intuitive and visually appealing user interface, ensuring that users can effortlessly book flights, hotels, and car rentals all within a single app. The primary goal was to enhance the overall user experience, making travel planning easy and enjoyable.</p>\n<h5 class=\"fs-5 fw-medium mt-4\">Key Features</h5>\n<ul>\n    <li>\n        <p class=\"text-dark fw-bold\">User-Centric Interface: <span class=\"text-300 fw-medium\">Designed a clean and intuitive interface that allows users to navigate through the app with ease, ensuring a smooth and enjoyable booking process.</span></p>\n    </li>\n    <li>\n        <p class=\"text-dark fw-bold\">Integrated Search and Booking: <span class=\"text-300 fw-medium\">Developed an integrated search function that enables users to find and book flights, hotels, and car rentals quickly and efficiently.</span></p>\n    </li>\n    <li>\n        <p class=\"text-dark fw-bold\">Personalized Recommendations: <span class=\"text-300 fw-medium\">Implemented a recommendation system that suggests destinations, accommodations, and activities based on user preferences and past behaviors.</span></p>\n    </li>\n    <li>\n        <p class=\"text-dark fw-bold\">\n            Secure Payment Gateway: <span class=\"text-300 fw-medium\">Integrated a secure payment gateway to ensure that all transactions <span class=\"text-dark fw-bold\">are safe and user data is protected.</span></span>\n        </p>\n    </li>\n    <li>\n        <p class=\"text-dark fw-bold\">Interactive Maps: <span class=\"text-300 fw-medium\">Added interactive maps to help users explore destinations, find nearby attractions, and get directions.</span></p>\n    </li>\n</ul>\n<h5 class=\"fs-5 fw-medium mt-4\">Technologies Used</h5>\n<ul>\n    <li>\n        <p class=\"text-dark fw-bold\">Front-End: <span class=\"text-300 fw-medium\">React Native for cross-platform mobile development, ensuring a consistent experience on both iOS and Android devices.</span></p>\n    </li>\n    <li>\n        <p class=\"text-dark fw-bold\">Back-End: <span class=\"text-300 fw-medium\">Node.js and Express for handling server-side logic and database interactions.</span></p>\n    </li>\n    <li>\n        <p class=\"text-dark fw-bold\">Database: <span class=\"text-300 fw-medium\">MongoDB for flexible data storage and retrieval.</span></p>\n    </li>\n    <li>\n        <p class=\"text-dark fw-bold\">APIs: <span class=\"text-300 fw-medium\">Integrated third-party APIs for flight, hotel, and car rental bookings to provide a wide range of options to users.</span></p>\n    </li>\n    <li>\n        <p class=\"text-dark fw-bold\">Payment Integration: <span class=\"text-300 fw-medium\">Stripe API for secure and reliable payment processing.</span></p>\n    </li>\n</ul>\n<h5 class=\"fs-5 fw-medium mt-4\">Design Highlights</h5>\n<ul>\n    <li>\n        <p class=\"text-dark fw-bold\">Visual Appeal: <span class=\"text-300 fw-medium\">Focused on a visually appealing design with high-quality images and a modern color palette to enhance user engagement.</span></p>\n    </li>\n    <li>\n        <p class=\"text-dark fw-bold\">Usability: <span class=\"text-300 fw-medium\">Ensured the app is user-friendly with clear icons, concise labels, and a straightforward navigation structure.</span></p>\n    </li>\n    <li>\n        <p class=\"text-dark fw-bold\">Responsive Design: <span class=\"text-300 fw-medium\">Made the app responsive to different screen sizes and orientations, providing a consistent user experience across various devices.</span></p>\n    </li>\n</ul>\n', 0, NULL, NULL, 5399, 'published', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(7, 5, 'Bug fixing', 'specialize in custom Laravel applications, bug fixing, and seamless server deployment', '<ol><li>Api Integration</li><li>Authentication error</li><li>Javascript Issue</li><li>Listing/Creation/Editing/Deletion Issue</li><li>UI/UX Issue</li><li>Website Loading issue</li><li>Data Overflow</li><li>Payment Getaway issue</li><li>Any broken url</li><li>Email/Messaging/Verification issue</li></ol><p>Ensuring that your projects are functional, efficient, and reliable. In addition to Laravel, I offer expertise in WordPress and Shopify, providing custom design, theme customization, and full development services for responsive, user-friendly sites. Dedicated to delivering quality work and exceptional customers.</p>', 0, NULL, NULL, 0, 'published', '2024-12-17 09:49:25', '2024-12-17 09:57:04');

-- --------------------------------------------------------

--
-- Table structure for table `pf_services_translations`
--

CREATE TABLE `pf_services_translations` (
  `lang_code` varchar(191) NOT NULL,
  `pf_services_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pf_service_categories`
--

CREATE TABLE `pf_service_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `status` varchar(191) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pf_service_categories`
--

INSERT INTO `pf_service_categories` (`id`, `parent_id`, `name`, `description`, `image`, `order`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Backend Development', 'Server-side development with robust, scalable architectures.', NULL, 0, 'published', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(2, NULL, 'Frontend Development', 'Building interactive and responsive web interfaces using modern technologies.', NULL, 0, 'published', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(5, NULL, 'Software/Website Update', NULL, NULL, 0, 'published', '2024-12-17 09:36:10', '2024-12-17 09:40:44');

-- --------------------------------------------------------

--
-- Table structure for table `pf_service_categories_translations`
--

CREATE TABLE `pf_service_categories_translations` (
  `lang_code` varchar(191) NOT NULL,
  `pf_service_categories_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `author_id` bigint(20) UNSIGNED DEFAULT NULL,
  `author_type` varchar(191) NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `image` varchar(191) DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `format_type` varchar(30) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(1, 'Building a Full-Stack App with the TALL Stack', 'Learn how to build a full-stack web application using the TALL stack, integrating Laravel, Alpine.js, Tailwind CSS, and Livewire for dynamic and responsive web development.', '<h5>Prioritize User-Centric Design</h5>\n<h5 class=\"fs-5 fw-medium\">Understand Your Users</h5>\n<p class=\"text-300\">Conduct thorough user research to understand your target audience’s needs, preferences, and pain points. Use surveys, interviews, and usability testing to gather valuable insights.</p>\n<h5 class=\"fs-5 fw-medium\">Simplify Navigation</h5>\n<p class=\"text-300\">Design a clean and intuitive navigation structure. Ensure users can easily find what they’re looking for without feeling overwhelmed. Use familiar icons and clear labels to guide them.</p>\n<h5 class=\"mt-6\">Optimize Performance</h5>\n<h5 class=\"fs-5 fw-medium\">Fast Loading Times</h5>\n<p class=\"text-300\">Optimize your app to load quickly. Users expect instant gratification, and slow load times can lead to frustration and app abandonment. Use efficient coding practices and minimize the use of heavy graphics.</p>\n<h5 class=\"fs-5 fw-medium\">Smooth Animations</h5>\n<p class=\"text-300\">Ensure animations and transitions are smooth and do not hinder the app’s performance. Well-executed animations can enhance the user experience by providing visual feedback and making interactions feel natural.</p>\n<h5 class=\"fs-5 fw-medium\">Offline Access</h5>\n<p class=\"text-300\">Provide offline capabilities for essential features. Allowing users to access certain functionalities without an internet connection can greatly improve their experience, especially in areas with poor connectivity.</p>\n<h5>Ensure Robust Security</h5>\n<h5 class=\"fs-5 fw-medium\">Data Protection</h5>\n<p class=\"text-300\">Implement strong security measures to protect user data. Use encryption, secure authentication methods, and regular security audits to safeguard sensitive information.</p>\n<h5 class=\"fs-5 fw-medium\">Transparent Policies</h5>\n<p class=\"text-300\">Be transparent about your data collection and usage policies. Provide users with clear information about how their data is used and give them control over their privacy settings.</p>\n<h5 class=\"fs-5 fw-medium\">Regular Updates</h5>\n<p class=\"text-300\">Keep your app updated with the latest security patches and improvements. Regular updates not only enhance security but also show users that you are actively maintaining and improving the app.</p>\n\n[highlighted-box title=\"Conclusion\" description=\"Creating a seamless mobile experience requires a user-centric approach, performance optimization, responsive design, user engagement strategies, and robust security measures. By focusing on these key areas, you can build a mobile app that not only meets user expectations but also stands out in the competitive app market. Remember, a great mobile experience can turn users into loyal advocates, driving the success of your app.\"][/highlighted-box]\n', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'main/posts/10.png', 2120, NULL, '2024-09-02 20:46:56', '2024-10-20 21:49:09'),
(2, 'My Journey in Open Source: 3 Years of Contributions', 'A personal reflection on my experiences contributing to open source projects over the past three years, sharing lessons learned and advice for aspiring contributors.', '<h5>Prioritize User-Centric Design</h5>\n<h5 class=\"fs-5 fw-medium\">Understand Your Users</h5>\n<p class=\"text-300\">Conduct thorough user research to understand your target audience’s needs, preferences, and pain points. Use surveys, interviews, and usability testing to gather valuable insights.</p>\n<h5 class=\"fs-5 fw-medium\">Simplify Navigation</h5>\n<p class=\"text-300\">Design a clean and intuitive navigation structure. Ensure users can easily find what they’re looking for without feeling overwhelmed. Use familiar icons and clear labels to guide them.</p>\n<h5 class=\"mt-6\">Optimize Performance</h5>\n<h5 class=\"fs-5 fw-medium\">Fast Loading Times</h5>\n<p class=\"text-300\">Optimize your app to load quickly. Users expect instant gratification, and slow load times can lead to frustration and app abandonment. Use efficient coding practices and minimize the use of heavy graphics.</p>\n<h5 class=\"fs-5 fw-medium\">Smooth Animations</h5>\n<p class=\"text-300\">Ensure animations and transitions are smooth and do not hinder the app’s performance. Well-executed animations can enhance the user experience by providing visual feedback and making interactions feel natural.</p>\n<h5 class=\"fs-5 fw-medium\">Offline Access</h5>\n<p class=\"text-300\">Provide offline capabilities for essential features. Allowing users to access certain functionalities without an internet connection can greatly improve their experience, especially in areas with poor connectivity.</p>\n<h5>Ensure Robust Security</h5>\n<h5 class=\"fs-5 fw-medium\">Data Protection</h5>\n<p class=\"text-300\">Implement strong security measures to protect user data. Use encryption, secure authentication methods, and regular security audits to safeguard sensitive information.</p>\n<h5 class=\"fs-5 fw-medium\">Transparent Policies</h5>\n<p class=\"text-300\">Be transparent about your data collection and usage policies. Provide users with clear information about how their data is used and give them control over their privacy settings.</p>\n<h5 class=\"fs-5 fw-medium\">Regular Updates</h5>\n<p class=\"text-300\">Keep your app updated with the latest security patches and improvements. Regular updates not only enhance security but also show users that you are actively maintaining and improving the app.</p>\n\n[highlighted-box title=\"Conclusion\" description=\"Creating a seamless mobile experience requires a user-centric approach, performance optimization, responsive design, user engagement strategies, and robust security measures. By focusing on these key areas, you can build a mobile app that not only meets user expectations but also stands out in the competitive app market. Remember, a great mobile experience can turn users into loyal advocates, driving the success of your app.\"][/highlighted-box]\n', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'main/posts/7.png', 2413, NULL, '2024-01-27 15:31:35', '2024-10-20 21:49:09'),
(3, '5 Essential Tools for Web Developers in 2024', 'Discover the top 5 tools that are essential for web developers in 2024, from frameworks and libraries to productivity boosters.', '<h5>Prioritize User-Centric Design</h5>\n<h5 class=\"fs-5 fw-medium\">Understand Your Users</h5>\n<p class=\"text-300\">Conduct thorough user research to understand your target audience’s needs, preferences, and pain points. Use surveys, interviews, and usability testing to gather valuable insights.</p>\n<h5 class=\"fs-5 fw-medium\">Simplify Navigation</h5>\n<p class=\"text-300\">Design a clean and intuitive navigation structure. Ensure users can easily find what they’re looking for without feeling overwhelmed. Use familiar icons and clear labels to guide them.</p>\n<h5 class=\"mt-6\">Optimize Performance</h5>\n<h5 class=\"fs-5 fw-medium\">Fast Loading Times</h5>\n<p class=\"text-300\">Optimize your app to load quickly. Users expect instant gratification, and slow load times can lead to frustration and app abandonment. Use efficient coding practices and minimize the use of heavy graphics.</p>\n<h5 class=\"fs-5 fw-medium\">Smooth Animations</h5>\n<p class=\"text-300\">Ensure animations and transitions are smooth and do not hinder the app’s performance. Well-executed animations can enhance the user experience by providing visual feedback and making interactions feel natural.</p>\n<h5 class=\"fs-5 fw-medium\">Offline Access</h5>\n<p class=\"text-300\">Provide offline capabilities for essential features. Allowing users to access certain functionalities without an internet connection can greatly improve their experience, especially in areas with poor connectivity.</p>\n<h5>Ensure Robust Security</h5>\n<h5 class=\"fs-5 fw-medium\">Data Protection</h5>\n<p class=\"text-300\">Implement strong security measures to protect user data. Use encryption, secure authentication methods, and regular security audits to safeguard sensitive information.</p>\n<h5 class=\"fs-5 fw-medium\">Transparent Policies</h5>\n<p class=\"text-300\">Be transparent about your data collection and usage policies. Provide users with clear information about how their data is used and give them control over their privacy settings.</p>\n<h5 class=\"fs-5 fw-medium\">Regular Updates</h5>\n<p class=\"text-300\">Keep your app updated with the latest security patches and improvements. Regular updates not only enhance security but also show users that you are actively maintaining and improving the app.</p>\n\n[highlighted-box title=\"Conclusion\" description=\"Creating a seamless mobile experience requires a user-centric approach, performance optimization, responsive design, user engagement strategies, and robust security measures. By focusing on these key areas, you can build a mobile app that not only meets user expectations but also stands out in the competitive app market. Remember, a great mobile experience can turn users into loyal advocates, driving the success of your app.\"][/highlighted-box]\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'main/posts/12.png', 1336, NULL, '2024-07-02 22:49:06', '2024-10-20 21:49:09'),
(4, 'How I Built My Personal Portfolio Using Botble CMS', 'A detailed walkthrough on how I built my portfolio website using Botble CMS, customizing it with the Zelio template for an impressive online presence.', '<h5>Prioritize User-Centric Design</h5>\n<h5 class=\"fs-5 fw-medium\">Understand Your Users</h5>\n<p class=\"text-300\">Conduct thorough user research to understand your target audience’s needs, preferences, and pain points. Use surveys, interviews, and usability testing to gather valuable insights.</p>\n<h5 class=\"fs-5 fw-medium\">Simplify Navigation</h5>\n<p class=\"text-300\">Design a clean and intuitive navigation structure. Ensure users can easily find what they’re looking for without feeling overwhelmed. Use familiar icons and clear labels to guide them.</p>\n<h5 class=\"mt-6\">Optimize Performance</h5>\n<h5 class=\"fs-5 fw-medium\">Fast Loading Times</h5>\n<p class=\"text-300\">Optimize your app to load quickly. Users expect instant gratification, and slow load times can lead to frustration and app abandonment. Use efficient coding practices and minimize the use of heavy graphics.</p>\n<h5 class=\"fs-5 fw-medium\">Smooth Animations</h5>\n<p class=\"text-300\">Ensure animations and transitions are smooth and do not hinder the app’s performance. Well-executed animations can enhance the user experience by providing visual feedback and making interactions feel natural.</p>\n<h5 class=\"fs-5 fw-medium\">Offline Access</h5>\n<p class=\"text-300\">Provide offline capabilities for essential features. Allowing users to access certain functionalities without an internet connection can greatly improve their experience, especially in areas with poor connectivity.</p>\n<h5>Ensure Robust Security</h5>\n<h5 class=\"fs-5 fw-medium\">Data Protection</h5>\n<p class=\"text-300\">Implement strong security measures to protect user data. Use encryption, secure authentication methods, and regular security audits to safeguard sensitive information.</p>\n<h5 class=\"fs-5 fw-medium\">Transparent Policies</h5>\n<p class=\"text-300\">Be transparent about your data collection and usage policies. Provide users with clear information about how their data is used and give them control over their privacy settings.</p>\n<h5 class=\"fs-5 fw-medium\">Regular Updates</h5>\n<p class=\"text-300\">Keep your app updated with the latest security patches and improvements. Regular updates not only enhance security but also show users that you are actively maintaining and improving the app.</p>\n\n[highlighted-box title=\"Conclusion\" description=\"Creating a seamless mobile experience requires a user-centric approach, performance optimization, responsive design, user engagement strategies, and robust security measures. By focusing on these key areas, you can build a mobile app that not only meets user expectations but also stands out in the competitive app market. Remember, a great mobile experience can turn users into loyal advocates, driving the success of your app.\"][/highlighted-box]\n', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'main/posts/8.png', 2343, NULL, '2024-02-01 14:20:53', '2024-10-20 21:49:09'),
(5, 'Creating Responsive UIs with Tailwind CSS', 'Learn how to create responsive user interfaces quickly and efficiently using the utility-first CSS framework, Tailwind CSS.', '<h5>Prioritize User-Centric Design</h5>\n<h5 class=\"fs-5 fw-medium\">Understand Your Users</h5>\n<p class=\"text-300\">Conduct thorough user research to understand your target audience’s needs, preferences, and pain points. Use surveys, interviews, and usability testing to gather valuable insights.</p>\n<h5 class=\"fs-5 fw-medium\">Simplify Navigation</h5>\n<p class=\"text-300\">Design a clean and intuitive navigation structure. Ensure users can easily find what they’re looking for without feeling overwhelmed. Use familiar icons and clear labels to guide them.</p>\n<h5 class=\"mt-6\">Optimize Performance</h5>\n<h5 class=\"fs-5 fw-medium\">Fast Loading Times</h5>\n<p class=\"text-300\">Optimize your app to load quickly. Users expect instant gratification, and slow load times can lead to frustration and app abandonment. Use efficient coding practices and minimize the use of heavy graphics.</p>\n<h5 class=\"fs-5 fw-medium\">Smooth Animations</h5>\n<p class=\"text-300\">Ensure animations and transitions are smooth and do not hinder the app’s performance. Well-executed animations can enhance the user experience by providing visual feedback and making interactions feel natural.</p>\n<h5 class=\"fs-5 fw-medium\">Offline Access</h5>\n<p class=\"text-300\">Provide offline capabilities for essential features. Allowing users to access certain functionalities without an internet connection can greatly improve their experience, especially in areas with poor connectivity.</p>\n<h5>Ensure Robust Security</h5>\n<h5 class=\"fs-5 fw-medium\">Data Protection</h5>\n<p class=\"text-300\">Implement strong security measures to protect user data. Use encryption, secure authentication methods, and regular security audits to safeguard sensitive information.</p>\n<h5 class=\"fs-5 fw-medium\">Transparent Policies</h5>\n<p class=\"text-300\">Be transparent about your data collection and usage policies. Provide users with clear information about how their data is used and give them control over their privacy settings.</p>\n<h5 class=\"fs-5 fw-medium\">Regular Updates</h5>\n<p class=\"text-300\">Keep your app updated with the latest security patches and improvements. Regular updates not only enhance security but also show users that you are actively maintaining and improving the app.</p>\n\n[highlighted-box title=\"Conclusion\" description=\"Creating a seamless mobile experience requires a user-centric approach, performance optimization, responsive design, user engagement strategies, and robust security measures. By focusing on these key areas, you can build a mobile app that not only meets user expectations but also stands out in the competitive app market. Remember, a great mobile experience can turn users into loyal advocates, driving the success of your app.\"][/highlighted-box]\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'main/posts/8.png', 2011, NULL, '2024-05-04 04:21:14', '2024-10-20 21:49:09'),
(6, 'Why I Love Contributing to Open Source Projects', 'A deep dive into why open source matters to me, how it helped me grow as a developer, and why every developer should contribute to open source.', '<h5>Prioritize User-Centric Design</h5>\n<h5 class=\"fs-5 fw-medium\">Understand Your Users</h5>\n<p class=\"text-300\">Conduct thorough user research to understand your target audience’s needs, preferences, and pain points. Use surveys, interviews, and usability testing to gather valuable insights.</p>\n<h5 class=\"fs-5 fw-medium\">Simplify Navigation</h5>\n<p class=\"text-300\">Design a clean and intuitive navigation structure. Ensure users can easily find what they’re looking for without feeling overwhelmed. Use familiar icons and clear labels to guide them.</p>\n<h5 class=\"mt-6\">Optimize Performance</h5>\n<h5 class=\"fs-5 fw-medium\">Fast Loading Times</h5>\n<p class=\"text-300\">Optimize your app to load quickly. Users expect instant gratification, and slow load times can lead to frustration and app abandonment. Use efficient coding practices and minimize the use of heavy graphics.</p>\n<h5 class=\"fs-5 fw-medium\">Smooth Animations</h5>\n<p class=\"text-300\">Ensure animations and transitions are smooth and do not hinder the app’s performance. Well-executed animations can enhance the user experience by providing visual feedback and making interactions feel natural.</p>\n<h5 class=\"fs-5 fw-medium\">Offline Access</h5>\n<p class=\"text-300\">Provide offline capabilities for essential features. Allowing users to access certain functionalities without an internet connection can greatly improve their experience, especially in areas with poor connectivity.</p>\n<h5>Ensure Robust Security</h5>\n<h5 class=\"fs-5 fw-medium\">Data Protection</h5>\n<p class=\"text-300\">Implement strong security measures to protect user data. Use encryption, secure authentication methods, and regular security audits to safeguard sensitive information.</p>\n<h5 class=\"fs-5 fw-medium\">Transparent Policies</h5>\n<p class=\"text-300\">Be transparent about your data collection and usage policies. Provide users with clear information about how their data is used and give them control over their privacy settings.</p>\n<h5 class=\"fs-5 fw-medium\">Regular Updates</h5>\n<p class=\"text-300\">Keep your app updated with the latest security patches and improvements. Regular updates not only enhance security but also show users that you are actively maintaining and improving the app.</p>\n\n[highlighted-box title=\"Conclusion\" description=\"Creating a seamless mobile experience requires a user-centric approach, performance optimization, responsive design, user engagement strategies, and robust security measures. By focusing on these key areas, you can build a mobile app that not only meets user expectations but also stands out in the competitive app market. Remember, a great mobile experience can turn users into loyal advocates, driving the success of your app.\"][/highlighted-box]\n', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'main/posts/12.png', 890, NULL, '2024-03-02 12:40:05', '2024-10-20 21:49:09'),
(7, 'A Deep Dive into Laravel for Beginners', 'A comprehensive guide for beginners who want to learn Laravel, covering everything from installation to building a simple application.', '<h5>Prioritize User-Centric Design</h5>\n<h5 class=\"fs-5 fw-medium\">Understand Your Users</h5>\n<p class=\"text-300\">Conduct thorough user research to understand your target audience’s needs, preferences, and pain points. Use surveys, interviews, and usability testing to gather valuable insights.</p>\n<h5 class=\"fs-5 fw-medium\">Simplify Navigation</h5>\n<p class=\"text-300\">Design a clean and intuitive navigation structure. Ensure users can easily find what they’re looking for without feeling overwhelmed. Use familiar icons and clear labels to guide them.</p>\n<h5 class=\"mt-6\">Optimize Performance</h5>\n<h5 class=\"fs-5 fw-medium\">Fast Loading Times</h5>\n<p class=\"text-300\">Optimize your app to load quickly. Users expect instant gratification, and slow load times can lead to frustration and app abandonment. Use efficient coding practices and minimize the use of heavy graphics.</p>\n<h5 class=\"fs-5 fw-medium\">Smooth Animations</h5>\n<p class=\"text-300\">Ensure animations and transitions are smooth and do not hinder the app’s performance. Well-executed animations can enhance the user experience by providing visual feedback and making interactions feel natural.</p>\n<h5 class=\"fs-5 fw-medium\">Offline Access</h5>\n<p class=\"text-300\">Provide offline capabilities for essential features. Allowing users to access certain functionalities without an internet connection can greatly improve their experience, especially in areas with poor connectivity.</p>\n<h5>Ensure Robust Security</h5>\n<h5 class=\"fs-5 fw-medium\">Data Protection</h5>\n<p class=\"text-300\">Implement strong security measures to protect user data. Use encryption, secure authentication methods, and regular security audits to safeguard sensitive information.</p>\n<h5 class=\"fs-5 fw-medium\">Transparent Policies</h5>\n<p class=\"text-300\">Be transparent about your data collection and usage policies. Provide users with clear information about how their data is used and give them control over their privacy settings.</p>\n<h5 class=\"fs-5 fw-medium\">Regular Updates</h5>\n<p class=\"text-300\">Keep your app updated with the latest security patches and improvements. Regular updates not only enhance security but also show users that you are actively maintaining and improving the app.</p>\n\n[highlighted-box title=\"Conclusion\" description=\"Creating a seamless mobile experience requires a user-centric approach, performance optimization, responsive design, user engagement strategies, and robust security measures. By focusing on these key areas, you can build a mobile app that not only meets user expectations but also stands out in the competitive app market. Remember, a great mobile experience can turn users into loyal advocates, driving the success of your app.\"][/highlighted-box]\n', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'main/posts/5.png', 757, NULL, '2024-02-13 18:49:07', '2024-10-20 21:49:09'),
(8, 'Exploring the Benefits of MySQL for Large-Scale Projects', 'An exploration of why MySQL is a great choice for large-scale projects, highlighting features, scalability, and performance tips.', '<h5>Prioritize User-Centric Design</h5>\n<h5 class=\"fs-5 fw-medium\">Understand Your Users</h5>\n<p class=\"text-300\">Conduct thorough user research to understand your target audience’s needs, preferences, and pain points. Use surveys, interviews, and usability testing to gather valuable insights.</p>\n<h5 class=\"fs-5 fw-medium\">Simplify Navigation</h5>\n<p class=\"text-300\">Design a clean and intuitive navigation structure. Ensure users can easily find what they’re looking for without feeling overwhelmed. Use familiar icons and clear labels to guide them.</p>\n<h5 class=\"mt-6\">Optimize Performance</h5>\n<h5 class=\"fs-5 fw-medium\">Fast Loading Times</h5>\n<p class=\"text-300\">Optimize your app to load quickly. Users expect instant gratification, and slow load times can lead to frustration and app abandonment. Use efficient coding practices and minimize the use of heavy graphics.</p>\n<h5 class=\"fs-5 fw-medium\">Smooth Animations</h5>\n<p class=\"text-300\">Ensure animations and transitions are smooth and do not hinder the app’s performance. Well-executed animations can enhance the user experience by providing visual feedback and making interactions feel natural.</p>\n<h5 class=\"fs-5 fw-medium\">Offline Access</h5>\n<p class=\"text-300\">Provide offline capabilities for essential features. Allowing users to access certain functionalities without an internet connection can greatly improve their experience, especially in areas with poor connectivity.</p>\n<h5>Ensure Robust Security</h5>\n<h5 class=\"fs-5 fw-medium\">Data Protection</h5>\n<p class=\"text-300\">Implement strong security measures to protect user data. Use encryption, secure authentication methods, and regular security audits to safeguard sensitive information.</p>\n<h5 class=\"fs-5 fw-medium\">Transparent Policies</h5>\n<p class=\"text-300\">Be transparent about your data collection and usage policies. Provide users with clear information about how their data is used and give them control over their privacy settings.</p>\n<h5 class=\"fs-5 fw-medium\">Regular Updates</h5>\n<p class=\"text-300\">Keep your app updated with the latest security patches and improvements. Regular updates not only enhance security but also show users that you are actively maintaining and improving the app.</p>\n\n[highlighted-box title=\"Conclusion\" description=\"Creating a seamless mobile experience requires a user-centric approach, performance optimization, responsive design, user engagement strategies, and robust security measures. By focusing on these key areas, you can build a mobile app that not only meets user expectations but also stands out in the competitive app market. Remember, a great mobile experience can turn users into loyal advocates, driving the success of your app.\"][/highlighted-box]\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'main/posts/12.png', 2105, NULL, '2024-08-30 07:27:03', '2024-10-20 21:49:09'),
(9, 'How to Integrate APIs in Node.js for Your Next Project', 'Learn how to seamlessly integrate third-party APIs in your Node.js applications for powerful data access and functionality.', '<h5>Prioritize User-Centric Design</h5>\n<h5 class=\"fs-5 fw-medium\">Understand Your Users</h5>\n<p class=\"text-300\">Conduct thorough user research to understand your target audience’s needs, preferences, and pain points. Use surveys, interviews, and usability testing to gather valuable insights.</p>\n<h5 class=\"fs-5 fw-medium\">Simplify Navigation</h5>\n<p class=\"text-300\">Design a clean and intuitive navigation structure. Ensure users can easily find what they’re looking for without feeling overwhelmed. Use familiar icons and clear labels to guide them.</p>\n<h5 class=\"mt-6\">Optimize Performance</h5>\n<h5 class=\"fs-5 fw-medium\">Fast Loading Times</h5>\n<p class=\"text-300\">Optimize your app to load quickly. Users expect instant gratification, and slow load times can lead to frustration and app abandonment. Use efficient coding practices and minimize the use of heavy graphics.</p>\n<h5 class=\"fs-5 fw-medium\">Smooth Animations</h5>\n<p class=\"text-300\">Ensure animations and transitions are smooth and do not hinder the app’s performance. Well-executed animations can enhance the user experience by providing visual feedback and making interactions feel natural.</p>\n<h5 class=\"fs-5 fw-medium\">Offline Access</h5>\n<p class=\"text-300\">Provide offline capabilities for essential features. Allowing users to access certain functionalities without an internet connection can greatly improve their experience, especially in areas with poor connectivity.</p>\n<h5>Ensure Robust Security</h5>\n<h5 class=\"fs-5 fw-medium\">Data Protection</h5>\n<p class=\"text-300\">Implement strong security measures to protect user data. Use encryption, secure authentication methods, and regular security audits to safeguard sensitive information.</p>\n<h5 class=\"fs-5 fw-medium\">Transparent Policies</h5>\n<p class=\"text-300\">Be transparent about your data collection and usage policies. Provide users with clear information about how their data is used and give them control over their privacy settings.</p>\n<h5 class=\"fs-5 fw-medium\">Regular Updates</h5>\n<p class=\"text-300\">Keep your app updated with the latest security patches and improvements. Regular updates not only enhance security but also show users that you are actively maintaining and improving the app.</p>\n\n[highlighted-box title=\"Conclusion\" description=\"Creating a seamless mobile experience requires a user-centric approach, performance optimization, responsive design, user engagement strategies, and robust security measures. By focusing on these key areas, you can build a mobile app that not only meets user expectations but also stands out in the competitive app market. Remember, a great mobile experience can turn users into loyal advocates, driving the success of your app.\"][/highlighted-box]\n', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'main/posts/12.png', 1593, NULL, '2024-04-10 15:41:33', '2024-10-20 21:49:09'),
(10, 'Best Practices for Designing User-Friendly Websites', 'Discover the best practices for designing websites that are not only aesthetically pleasing but also user-friendly and accessible.', '<h5>Prioritize User-Centric Design</h5>\n<h5 class=\"fs-5 fw-medium\">Understand Your Users</h5>\n<p class=\"text-300\">Conduct thorough user research to understand your target audience’s needs, preferences, and pain points. Use surveys, interviews, and usability testing to gather valuable insights.</p>\n<h5 class=\"fs-5 fw-medium\">Simplify Navigation</h5>\n<p class=\"text-300\">Design a clean and intuitive navigation structure. Ensure users can easily find what they’re looking for without feeling overwhelmed. Use familiar icons and clear labels to guide them.</p>\n<h5 class=\"mt-6\">Optimize Performance</h5>\n<h5 class=\"fs-5 fw-medium\">Fast Loading Times</h5>\n<p class=\"text-300\">Optimize your app to load quickly. Users expect instant gratification, and slow load times can lead to frustration and app abandonment. Use efficient coding practices and minimize the use of heavy graphics.</p>\n<h5 class=\"fs-5 fw-medium\">Smooth Animations</h5>\n<p class=\"text-300\">Ensure animations and transitions are smooth and do not hinder the app’s performance. Well-executed animations can enhance the user experience by providing visual feedback and making interactions feel natural.</p>\n<h5 class=\"fs-5 fw-medium\">Offline Access</h5>\n<p class=\"text-300\">Provide offline capabilities for essential features. Allowing users to access certain functionalities without an internet connection can greatly improve their experience, especially in areas with poor connectivity.</p>\n<h5>Ensure Robust Security</h5>\n<h5 class=\"fs-5 fw-medium\">Data Protection</h5>\n<p class=\"text-300\">Implement strong security measures to protect user data. Use encryption, secure authentication methods, and regular security audits to safeguard sensitive information.</p>\n<h5 class=\"fs-5 fw-medium\">Transparent Policies</h5>\n<p class=\"text-300\">Be transparent about your data collection and usage policies. Provide users with clear information about how their data is used and give them control over their privacy settings.</p>\n<h5 class=\"fs-5 fw-medium\">Regular Updates</h5>\n<p class=\"text-300\">Keep your app updated with the latest security patches and improvements. Regular updates not only enhance security but also show users that you are actively maintaining and improving the app.</p>\n\n[highlighted-box title=\"Conclusion\" description=\"Creating a seamless mobile experience requires a user-centric approach, performance optimization, responsive design, user engagement strategies, and robust security measures. By focusing on these key areas, you can build a mobile app that not only meets user expectations but also stands out in the competitive app market. Remember, a great mobile experience can turn users into loyal advocates, driving the success of your app.\"][/highlighted-box]\n', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'main/posts/3.png', 1768, NULL, '2023-11-25 14:19:07', '2024-10-20 21:49:09'),
(11, 'Lessons from My First Web Development Job', 'Reflecting on my first web development job, the lessons I learned, the challenges I faced, and how it shaped my career.', '<h5>Prioritize User-Centric Design</h5>\n<h5 class=\"fs-5 fw-medium\">Understand Your Users</h5>\n<p class=\"text-300\">Conduct thorough user research to understand your target audience’s needs, preferences, and pain points. Use surveys, interviews, and usability testing to gather valuable insights.</p>\n<h5 class=\"fs-5 fw-medium\">Simplify Navigation</h5>\n<p class=\"text-300\">Design a clean and intuitive navigation structure. Ensure users can easily find what they’re looking for without feeling overwhelmed. Use familiar icons and clear labels to guide them.</p>\n<h5 class=\"mt-6\">Optimize Performance</h5>\n<h5 class=\"fs-5 fw-medium\">Fast Loading Times</h5>\n<p class=\"text-300\">Optimize your app to load quickly. Users expect instant gratification, and slow load times can lead to frustration and app abandonment. Use efficient coding practices and minimize the use of heavy graphics.</p>\n<h5 class=\"fs-5 fw-medium\">Smooth Animations</h5>\n<p class=\"text-300\">Ensure animations and transitions are smooth and do not hinder the app’s performance. Well-executed animations can enhance the user experience by providing visual feedback and making interactions feel natural.</p>\n<h5 class=\"fs-5 fw-medium\">Offline Access</h5>\n<p class=\"text-300\">Provide offline capabilities for essential features. Allowing users to access certain functionalities without an internet connection can greatly improve their experience, especially in areas with poor connectivity.</p>\n<h5>Ensure Robust Security</h5>\n<h5 class=\"fs-5 fw-medium\">Data Protection</h5>\n<p class=\"text-300\">Implement strong security measures to protect user data. Use encryption, secure authentication methods, and regular security audits to safeguard sensitive information.</p>\n<h5 class=\"fs-5 fw-medium\">Transparent Policies</h5>\n<p class=\"text-300\">Be transparent about your data collection and usage policies. Provide users with clear information about how their data is used and give them control over their privacy settings.</p>\n<h5 class=\"fs-5 fw-medium\">Regular Updates</h5>\n<p class=\"text-300\">Keep your app updated with the latest security patches and improvements. Regular updates not only enhance security but also show users that you are actively maintaining and improving the app.</p>\n\n[highlighted-box title=\"Conclusion\" description=\"Creating a seamless mobile experience requires a user-centric approach, performance optimization, responsive design, user engagement strategies, and robust security measures. By focusing on these key areas, you can build a mobile app that not only meets user expectations but also stands out in the competitive app market. Remember, a great mobile experience can turn users into loyal advocates, driving the success of your app.\"][/highlighted-box]\n', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'main/posts/11.png', 2362, NULL, '2024-04-15 03:48:52', '2024-10-20 21:49:09'),
(12, 'How to Contribute to Open Source: A Beginner’s Guide', 'A step-by-step guide on how beginners can start contributing to open source projects, with tips on finding the right project and making meaningful contributions.', '<h5>Prioritize User-Centric Design</h5>\n<h5 class=\"fs-5 fw-medium\">Understand Your Users</h5>\n<p class=\"text-300\">Conduct thorough user research to understand your target audience’s needs, preferences, and pain points. Use surveys, interviews, and usability testing to gather valuable insights.</p>\n<h5 class=\"fs-5 fw-medium\">Simplify Navigation</h5>\n<p class=\"text-300\">Design a clean and intuitive navigation structure. Ensure users can easily find what they’re looking for without feeling overwhelmed. Use familiar icons and clear labels to guide them.</p>\n<h5 class=\"mt-6\">Optimize Performance</h5>\n<h5 class=\"fs-5 fw-medium\">Fast Loading Times</h5>\n<p class=\"text-300\">Optimize your app to load quickly. Users expect instant gratification, and slow load times can lead to frustration and app abandonment. Use efficient coding practices and minimize the use of heavy graphics.</p>\n<h5 class=\"fs-5 fw-medium\">Smooth Animations</h5>\n<p class=\"text-300\">Ensure animations and transitions are smooth and do not hinder the app’s performance. Well-executed animations can enhance the user experience by providing visual feedback and making interactions feel natural.</p>\n<h5 class=\"fs-5 fw-medium\">Offline Access</h5>\n<p class=\"text-300\">Provide offline capabilities for essential features. Allowing users to access certain functionalities without an internet connection can greatly improve their experience, especially in areas with poor connectivity.</p>\n<h5>Ensure Robust Security</h5>\n<h5 class=\"fs-5 fw-medium\">Data Protection</h5>\n<p class=\"text-300\">Implement strong security measures to protect user data. Use encryption, secure authentication methods, and regular security audits to safeguard sensitive information.</p>\n<h5 class=\"fs-5 fw-medium\">Transparent Policies</h5>\n<p class=\"text-300\">Be transparent about your data collection and usage policies. Provide users with clear information about how their data is used and give them control over their privacy settings.</p>\n<h5 class=\"fs-5 fw-medium\">Regular Updates</h5>\n<p class=\"text-300\">Keep your app updated with the latest security patches and improvements. Regular updates not only enhance security but also show users that you are actively maintaining and improving the app.</p>\n\n[highlighted-box title=\"Conclusion\" description=\"Creating a seamless mobile experience requires a user-centric approach, performance optimization, responsive design, user engagement strategies, and robust security measures. By focusing on these key areas, you can build a mobile app that not only meets user expectations but also stands out in the competitive app market. Remember, a great mobile experience can turn users into loyal advocates, driving the success of your app.\"][/highlighted-box]\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'main/posts/7.png', 1291, NULL, '2023-11-06 20:03:49', '2024-10-20 21:49:09'),
(13, 'Optimizing Web Performance with React.js', 'Learn how to optimize your React.js applications for better performance, focusing on code splitting, lazy loading, and efficient state management.', '<h5>Prioritize User-Centric Design</h5>\n<h5 class=\"fs-5 fw-medium\">Understand Your Users</h5>\n<p class=\"text-300\">Conduct thorough user research to understand your target audience’s needs, preferences, and pain points. Use surveys, interviews, and usability testing to gather valuable insights.</p>\n<h5 class=\"fs-5 fw-medium\">Simplify Navigation</h5>\n<p class=\"text-300\">Design a clean and intuitive navigation structure. Ensure users can easily find what they’re looking for without feeling overwhelmed. Use familiar icons and clear labels to guide them.</p>\n<h5 class=\"mt-6\">Optimize Performance</h5>\n<h5 class=\"fs-5 fw-medium\">Fast Loading Times</h5>\n<p class=\"text-300\">Optimize your app to load quickly. Users expect instant gratification, and slow load times can lead to frustration and app abandonment. Use efficient coding practices and minimize the use of heavy graphics.</p>\n<h5 class=\"fs-5 fw-medium\">Smooth Animations</h5>\n<p class=\"text-300\">Ensure animations and transitions are smooth and do not hinder the app’s performance. Well-executed animations can enhance the user experience by providing visual feedback and making interactions feel natural.</p>\n<h5 class=\"fs-5 fw-medium\">Offline Access</h5>\n<p class=\"text-300\">Provide offline capabilities for essential features. Allowing users to access certain functionalities without an internet connection can greatly improve their experience, especially in areas with poor connectivity.</p>\n<h5>Ensure Robust Security</h5>\n<h5 class=\"fs-5 fw-medium\">Data Protection</h5>\n<p class=\"text-300\">Implement strong security measures to protect user data. Use encryption, secure authentication methods, and regular security audits to safeguard sensitive information.</p>\n<h5 class=\"fs-5 fw-medium\">Transparent Policies</h5>\n<p class=\"text-300\">Be transparent about your data collection and usage policies. Provide users with clear information about how their data is used and give them control over their privacy settings.</p>\n<h5 class=\"fs-5 fw-medium\">Regular Updates</h5>\n<p class=\"text-300\">Keep your app updated with the latest security patches and improvements. Regular updates not only enhance security but also show users that you are actively maintaining and improving the app.</p>\n\n[highlighted-box title=\"Conclusion\" description=\"Creating a seamless mobile experience requires a user-centric approach, performance optimization, responsive design, user engagement strategies, and robust security measures. By focusing on these key areas, you can build a mobile app that not only meets user expectations but also stands out in the competitive app market. Remember, a great mobile experience can turn users into loyal advocates, driving the success of your app.\"][/highlighted-box]\n', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'main/posts/4.png', 381, NULL, '2024-08-12 14:01:18', '2024-10-20 21:49:09'),
(14, 'My Top 5 GitHub Projects', 'An overview of my top 5 GitHub projects, showcasing what I’ve built and how they’ve helped me grow as a developer.', '<h5>Prioritize User-Centric Design</h5>\n<h5 class=\"fs-5 fw-medium\">Understand Your Users</h5>\n<p class=\"text-300\">Conduct thorough user research to understand your target audience’s needs, preferences, and pain points. Use surveys, interviews, and usability testing to gather valuable insights.</p>\n<h5 class=\"fs-5 fw-medium\">Simplify Navigation</h5>\n<p class=\"text-300\">Design a clean and intuitive navigation structure. Ensure users can easily find what they’re looking for without feeling overwhelmed. Use familiar icons and clear labels to guide them.</p>\n<h5 class=\"mt-6\">Optimize Performance</h5>\n<h5 class=\"fs-5 fw-medium\">Fast Loading Times</h5>\n<p class=\"text-300\">Optimize your app to load quickly. Users expect instant gratification, and slow load times can lead to frustration and app abandonment. Use efficient coding practices and minimize the use of heavy graphics.</p>\n<h5 class=\"fs-5 fw-medium\">Smooth Animations</h5>\n<p class=\"text-300\">Ensure animations and transitions are smooth and do not hinder the app’s performance. Well-executed animations can enhance the user experience by providing visual feedback and making interactions feel natural.</p>\n<h5 class=\"fs-5 fw-medium\">Offline Access</h5>\n<p class=\"text-300\">Provide offline capabilities for essential features. Allowing users to access certain functionalities without an internet connection can greatly improve their experience, especially in areas with poor connectivity.</p>\n<h5>Ensure Robust Security</h5>\n<h5 class=\"fs-5 fw-medium\">Data Protection</h5>\n<p class=\"text-300\">Implement strong security measures to protect user data. Use encryption, secure authentication methods, and regular security audits to safeguard sensitive information.</p>\n<h5 class=\"fs-5 fw-medium\">Transparent Policies</h5>\n<p class=\"text-300\">Be transparent about your data collection and usage policies. Provide users with clear information about how their data is used and give them control over their privacy settings.</p>\n<h5 class=\"fs-5 fw-medium\">Regular Updates</h5>\n<p class=\"text-300\">Keep your app updated with the latest security patches and improvements. Regular updates not only enhance security but also show users that you are actively maintaining and improving the app.</p>\n\n[highlighted-box title=\"Conclusion\" description=\"Creating a seamless mobile experience requires a user-centric approach, performance optimization, responsive design, user engagement strategies, and robust security measures. By focusing on these key areas, you can build a mobile app that not only meets user expectations but also stands out in the competitive app market. Remember, a great mobile experience can turn users into loyal advocates, driving the success of your app.\"][/highlighted-box]\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'main/posts/8.png', 706, NULL, '2024-05-23 21:41:01', '2024-10-20 21:49:09'),
(15, 'Adapting to the New Web Development Trends in 2024', 'A look at the latest trends in web development for 2024, including new technologies, best practices, and what the future holds for developers.', '<h5>Prioritize User-Centric Design</h5>\n<h5 class=\"fs-5 fw-medium\">Understand Your Users</h5>\n<p class=\"text-300\">Conduct thorough user research to understand your target audience’s needs, preferences, and pain points. Use surveys, interviews, and usability testing to gather valuable insights.</p>\n<h5 class=\"fs-5 fw-medium\">Simplify Navigation</h5>\n<p class=\"text-300\">Design a clean and intuitive navigation structure. Ensure users can easily find what they’re looking for without feeling overwhelmed. Use familiar icons and clear labels to guide them.</p>\n<h5 class=\"mt-6\">Optimize Performance</h5>\n<h5 class=\"fs-5 fw-medium\">Fast Loading Times</h5>\n<p class=\"text-300\">Optimize your app to load quickly. Users expect instant gratification, and slow load times can lead to frustration and app abandonment. Use efficient coding practices and minimize the use of heavy graphics.</p>\n<h5 class=\"fs-5 fw-medium\">Smooth Animations</h5>\n<p class=\"text-300\">Ensure animations and transitions are smooth and do not hinder the app’s performance. Well-executed animations can enhance the user experience by providing visual feedback and making interactions feel natural.</p>\n<h5 class=\"fs-5 fw-medium\">Offline Access</h5>\n<p class=\"text-300\">Provide offline capabilities for essential features. Allowing users to access certain functionalities without an internet connection can greatly improve their experience, especially in areas with poor connectivity.</p>\n<h5>Ensure Robust Security</h5>\n<h5 class=\"fs-5 fw-medium\">Data Protection</h5>\n<p class=\"text-300\">Implement strong security measures to protect user data. Use encryption, secure authentication methods, and regular security audits to safeguard sensitive information.</p>\n<h5 class=\"fs-5 fw-medium\">Transparent Policies</h5>\n<p class=\"text-300\">Be transparent about your data collection and usage policies. Provide users with clear information about how their data is used and give them control over their privacy settings.</p>\n<h5 class=\"fs-5 fw-medium\">Regular Updates</h5>\n<p class=\"text-300\">Keep your app updated with the latest security patches and improvements. Regular updates not only enhance security but also show users that you are actively maintaining and improving the app.</p>\n\n[highlighted-box title=\"Conclusion\" description=\"Creating a seamless mobile experience requires a user-centric approach, performance optimization, responsive design, user engagement strategies, and robust security measures. By focusing on these key areas, you can build a mobile app that not only meets user expectations but also stands out in the competitive app market. Remember, a great mobile experience can turn users into loyal advocates, driving the success of your app.\"][/highlighted-box]\n', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'main/posts/2.png', 1209, NULL, '2024-06-02 01:31:11', '2024-10-20 21:49:09');

-- --------------------------------------------------------

--
-- Table structure for table `posts_translations`
--

CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) NOT NULL,
  `posts_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`category_id`, `post_id`) VALUES
(2, 1),
(6, 1),
(9, 2),
(8, 2),
(8, 3),
(9, 3),
(5, 4),
(9, 4),
(1, 5),
(5, 5),
(3, 6),
(1, 6),
(4, 7),
(1, 7),
(6, 8),
(4, 8),
(8, 9),
(1, 9),
(8, 10),
(4, 11),
(3, 11),
(2, 12),
(8, 12),
(8, 13),
(5, 13),
(4, 14),
(8, 14),
(8, 15),
(6, 15);

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`tag_id`, `post_id`) VALUES
(5, 1),
(6, 1),
(8, 1),
(6, 2),
(7, 2),
(3, 2),
(2, 3),
(4, 3),
(7, 4),
(6, 4),
(1, 4),
(2, 5),
(8, 5),
(1, 5),
(4, 6),
(8, 6),
(7, 6),
(6, 7),
(3, 7),
(8, 7),
(3, 8),
(7, 8),
(1, 8),
(1, 9),
(5, 9),
(1, 10),
(6, 10),
(3, 11),
(1, 11),
(7, 12),
(2, 12),
(8, 12),
(3, 13),
(8, 13),
(6, 13),
(8, 14),
(1, 14),
(6, 14),
(4, 15),
(7, 15),
(8, 15);

-- --------------------------------------------------------

--
-- Table structure for table `request_logs`
--

CREATE TABLE `request_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status_code` int(11) DEFAULT NULL,
  `url` varchar(191) DEFAULT NULL,
  `count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` varchar(191) DEFAULT NULL,
  `referrer` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `request_logs`
--

INSERT INTO `request_logs` (`id`, `status_code`, `url`, `count`, `user_id`, `referrer`, `created_at`, `updated_at`) VALUES
(5, 404, 'http://127.0.0.1:8000/themes/zelio/images/template/down.svg', 3, NULL, NULL, '2025-02-10 10:54:36', '2025-02-10 10:56:10');

-- --------------------------------------------------------

--
-- Table structure for table `revisions`
--

CREATE TABLE `revisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `revisionable_type` varchar(191) NOT NULL,
  `revisionable_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `key` varchar(120) NOT NULL,
  `old_value` text DEFAULT NULL,
  `new_value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `revisions`
--

INSERT INTO `revisions` (`id`, `revisionable_type`, `revisionable_id`, `user_id`, `key`, `old_value`, `new_value`, `created_at`, `updated_at`) VALUES
(1, 'Botble\\Page\\Models\\Page', 1, 1, 'image', NULL, '257611305-391568315912249-333814.png', '2024-12-15 11:55:00', '2024-12-15 11:55:00'),
(2, 'Botble\\Page\\Models\\Page', 1, 1, 'template', NULL, 'default', '2024-12-15 11:55:00', '2024-12-15 11:55:00'),
(3, 'Botble\\Page\\Models\\Page', 1, 1, 'description', NULL, '', '2024-12-15 11:55:00', '2024-12-15 11:55:00');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(120) NOT NULL,
  `name` varchar(120) NOT NULL,
  `permissions` text DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `slug`, `name`, `permissions`, `description`, `is_default`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', '{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"settings.website-tracking\":true,\"widgets.index\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.settings\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"faqs.settings\":true,\"fob-comment.index\":true,\"fob-comment.comments.index\":true,\"fob-comment.comments.edit\":true,\"fob-comment.comments.destroy\":true,\"fob-comment.comments.reply\":true,\"fob-comment.settings\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"plugins.portfolio\":true,\"portfolio.projects.index\":true,\"portfolio.projects.create\":true,\"portfolio.projects.edit\":true,\"portfolio.projects.destroy\":true,\"portfolio.service-categories.index\":true,\"portfolio.service-categories.create\":true,\"portfolio.service-categories.edit\":true,\"portfolio.service-categories.destroy\":true,\"portfolio.services.index\":true,\"portfolio.services.create\":true,\"portfolio.services.edit\":true,\"portfolio.services.destroy\":true,\"portfolio.packages.index\":true,\"portfolio.packages.create\":true,\"portfolio.packages.edit\":true,\"portfolio.packages.destroy\":true,\"portfolio.quotation-requests.index\":true,\"portfolio.quotation-requests.create\":true,\"portfolio.quotation-requests.edit\":true,\"portfolio.quotation-requests.destroy\":true,\"portfolio.custom-fields.index\":true,\"portfolio.custom-fields.create\":true,\"portfolio.custom-fields.edit\":true,\"portfolio.custom-fields.destroy\":true,\"request-log.index\":true,\"request-log.destroy\":true,\"testimonial.index\":true,\"testimonial.create\":true,\"testimonial.edit\":true,\"testimonial.destroy\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true,\"theme-translations.export\":true,\"other-translations.export\":true,\"theme-translations.import\":true,\"other-translations.import\":true}', 'Admin users role', 1, 1, 1, '2024-10-20 21:49:07', '2024-10-20 21:49:07');

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'media_random_hash', 'ff8547c8823a2e7fa8445be461b69e3b', NULL, '2024-12-15 11:52:52'),
(2, 'api_enabled', '1', NULL, '2024-12-15 11:52:52'),
(3, 'activated_plugins', '[\"language\",\"language-advanced\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"faq\",\"fob-comment\",\"newsletter\",\"portfolio\",\"request-log\",\"rss-feed\",\"testimonial\",\"translation\"]', NULL, '2024-12-15 11:52:52'),
(4, 'theme', 'zelio', NULL, '2024-12-15 11:52:52'),
(5, 'show_admin_bar', '1', NULL, '2024-12-15 11:52:52'),
(6, 'language_hide_default', '1', NULL, '2024-12-15 11:52:52'),
(7, 'language_switcher_display', 'dropdown', NULL, '2024-12-15 11:52:52'),
(8, 'language_display', 'all', NULL, '2024-12-15 11:52:52'),
(9, 'language_hide_languages', '[]', NULL, '2024-12-15 11:52:52'),
(10, 'theme-zelio-favicon', 'black-and-white-circle-business-logo-1-2.png', NULL, '2024-12-15 11:52:52'),
(11, 'theme-zelio-logo', 'black-and-white-circle-business-logo-1-2.png', NULL, '2024-12-15 11:52:52'),
(12, 'theme-zelio-logo_dark', 'black-and-white-circle-business-logo-1-2.png', NULL, '2024-12-15 11:52:52'),
(13, 'theme-zelio-site_title', 'Web &amp; App developer', NULL, '2024-12-15 11:52:52'),
(14, 'theme-zelio-site_name', 'Rahman Tutul', NULL, '2024-12-15 11:52:52'),
(15, 'theme-zelio-seo_description', 'Discover innovative designs, creative projects, and unique artistic works. Showcasing the expertise and vision behind every creation.', NULL, '2024-12-15 11:52:52'),
(16, 'theme-zelio-tp_primary_font', 'DM Mono', NULL, '2024-12-15 11:52:52'),
(17, 'theme-zelio-primary_color', '#62a92b', NULL, '2024-12-15 11:52:52'),
(18, 'theme-zelio-gradient_color', '#659932', NULL, '2024-12-15 11:52:52'),
(19, 'theme-zelio-homepage_id', '1', NULL, '2024-12-15 11:52:52'),
(20, 'theme-zelio-social_links', '{\"1\":[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/rahmantutul50\\/\"},{\"key\":\"image\",\"value\":null},{\"key\":\"color\",\"value\":\"transparent\"},{\"key\":\"background-color\",\"value\":\"transparent\"}],\"2\":[{\"key\":\"name\",\"value\":\"GitHub\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-github-filled\"},{\"key\":\"url\",\"value\":\"https:\\/\\/github.com\\/rahmantutul\"},{\"key\":\"image\",\"value\":null},{\"key\":\"color\",\"value\":\"transparent\"},{\"key\":\"background-color\",\"value\":\"transparent\"}],\"3\":[{\"key\":\"name\",\"value\":\"LinkedIn\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.linkedin.com\\/in\\/rahmantutul\\/\"},{\"key\":\"image\",\"value\":null},{\"key\":\"color\",\"value\":\"transparent\"},{\"key\":\"background-color\",\"value\":\"transparent\"}],\"4\":[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/_rahmantutul\\/\"},{\"key\":\"image\",\"value\":null},{\"key\":\"color\",\"value\":\"transparent\"},{\"key\":\"background-color\",\"value\":\"transparent\"}]}', NULL, '2024-12-15 11:52:52'),
(21, 'theme-zelio-copyright', '©2024 All Rights Reserved by Mostafijur Rahman', NULL, '2024-12-15 11:52:52'),
(22, 'theme-zelio-preloader_enabled', 'yes', NULL, '2024-12-15 11:52:52'),
(23, 'theme-zelio-preloader_version', 'v2', NULL, '2024-12-15 11:52:52'),
(24, 'theme-zelio-footer_background', '360-f-170932733-vohgeah5ajrvcxbvryewvgwharv2wnnh.webp', NULL, '2024-12-15 11:52:52'),
(25, 'theme-zelio-header_style', '2', NULL, '2024-12-15 11:52:52'),
(26, 'theme-zelio-footer_style', '2', NULL, '2024-12-15 11:52:52'),
(27, 'theme-zelio-preloader_style', '2', NULL, '2024-12-15 11:52:52'),
(28, 'theme-zelio-blog_page_id', '5', NULL, '2024-12-15 11:52:52'),
(29, 'theme-zelio-post_item_style', '2', NULL, '2024-12-15 11:52:52'),
(30, 'theme-zelio-post_item_per_row', '3', NULL, '2024-12-15 11:52:52'),
(31, 'theme-zelio-cookie_consent_learn_more_url', '/cookie-policy', NULL, '2024-12-15 11:52:52'),
(32, 'theme-zelio-cookie_consent_learn_more_text', 'Cookie Policy', NULL, '2024-12-15 11:52:52'),
(33, 'theme-zelio-show_site_name', '0', NULL, '2024-12-15 11:52:52'),
(34, 'theme-zelio-seo_title', '', NULL, '2024-12-15 11:52:52'),
(35, 'theme-zelio-seo_index', '1', NULL, '2024-12-15 11:52:52'),
(36, 'theme-zelio-seo_og_image', '', NULL, '2024-12-15 11:52:52'),
(37, 'theme-zelio-term_and_privacy_policy_url', '', NULL, '2024-12-15 11:52:52');

-- --------------------------------------------------------

--
-- Table structure for table `slugs`
--

CREATE TABLE `slugs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) NOT NULL,
  `reference_id` bigint(20) UNSIGNED NOT NULL,
  `reference_type` varchar(191) NOT NULL,
  `prefix` varchar(120) DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slugs`
--

INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES
(1, 'web-development', 1, 'Botble\\Blog\\Models\\Category', '', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(2, 'open-source-contributions', 2, 'Botble\\Blog\\Models\\Category', '', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(3, 'tutorials', 3, 'Botble\\Blog\\Models\\Category', '', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(4, 'technology-reviews', 4, 'Botble\\Blog\\Models\\Category', '', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(5, 'personal-blog', 5, 'Botble\\Blog\\Models\\Category', '', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(6, 'career-journey', 6, 'Botble\\Blog\\Models\\Category', '', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(7, 'coding-challenges', 7, 'Botble\\Blog\\Models\\Category', '', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(8, 'design-portfolio', 8, 'Botble\\Blog\\Models\\Category', '', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(9, 'collaborations', 9, 'Botble\\Blog\\Models\\Category', '', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(10, 'botble-cms', 1, 'Botble\\Blog\\Models\\Tag', 'tag', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(11, 'javascript', 2, 'Botble\\Blog\\Models\\Tag', 'tag', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(12, 'open-source', 3, 'Botble\\Blog\\Models\\Tag', 'tag', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(13, 'web-design', 4, 'Botble\\Blog\\Models\\Tag', 'tag', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(14, 'api-development', 5, 'Botble\\Blog\\Models\\Tag', 'tag', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(15, 'full-stack-development', 6, 'Botble\\Blog\\Models\\Tag', 'tag', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(16, 'vietnam-developer', 7, 'Botble\\Blog\\Models\\Tag', 'tag', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(17, 'github-projects', 8, 'Botble\\Blog\\Models\\Tag', 'tag', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(18, 'building-a-full-stack-app-with-the-tall-stack', 1, 'Botble\\Blog\\Models\\Post', '', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(19, 'my-journey-in-open-source-3-years-of-contributions', 2, 'Botble\\Blog\\Models\\Post', '', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(20, '5-essential-tools-for-web-developers-in-2024', 3, 'Botble\\Blog\\Models\\Post', '', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(21, 'how-i-built-my-personal-portfolio-using-botble-cms', 4, 'Botble\\Blog\\Models\\Post', '', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(22, 'creating-responsive-uis-with-tailwind-css', 5, 'Botble\\Blog\\Models\\Post', '', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(23, 'why-i-love-contributing-to-open-source-projects', 6, 'Botble\\Blog\\Models\\Post', '', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(24, 'a-deep-dive-into-laravel-for-beginners', 7, 'Botble\\Blog\\Models\\Post', '', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(25, 'exploring-the-benefits-of-mysql-for-large-scale-projects', 8, 'Botble\\Blog\\Models\\Post', '', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(26, 'how-to-integrate-apis-in-nodejs-for-your-next-project', 9, 'Botble\\Blog\\Models\\Post', '', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(27, 'best-practices-for-designing-user-friendly-websites', 10, 'Botble\\Blog\\Models\\Post', '', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(28, 'lessons-from-my-first-web-development-job', 11, 'Botble\\Blog\\Models\\Post', '', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(29, 'how-to-contribute-to-open-source-a-beginners-guide', 12, 'Botble\\Blog\\Models\\Post', '', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(30, 'optimizing-web-performance-with-reactjs', 13, 'Botble\\Blog\\Models\\Post', '', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(31, 'my-top-5-github-projects', 14, 'Botble\\Blog\\Models\\Post', '', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(32, 'adapting-to-the-new-web-development-trends-in-2024', 15, 'Botble\\Blog\\Models\\Post', '', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(33, 'api-development', 1, 'Botble\\Portfolio\\Models\\Service', 'services', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(34, 'frontend-development', 2, 'Botble\\Portfolio\\Models\\Service', 'services', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(35, 'mobile-app-development', 3, 'Botble\\Portfolio\\Models\\Service', 'services', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(37, 'cloud-integration', 5, 'Botble\\Portfolio\\Models\\Service', 'services', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(38, 'database-management', 6, 'Botble\\Portfolio\\Models\\Service', 'services', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(39, 'property-agency', 1, 'Botble\\Portfolio\\Models\\Project', 'projects', '2024-10-20 21:49:09', '2025-01-10 00:53:09'),
(40, 'gamming-asset-vendor', 2, 'Botble\\Portfolio\\Models\\Project', 'projects', '2024-10-20 21:49:09', '2025-01-10 00:47:24'),
(41, 'b2b-business-solution-for-traders', 3, 'Botble\\Portfolio\\Models\\Project', 'projects', '2024-10-20 21:49:09', '2025-01-10 00:42:20'),
(42, 'full-functional-erp-system', 4, 'Botble\\Portfolio\\Models\\Project', 'projects', '2024-10-20 21:49:09', '2025-01-10 00:41:59'),
(43, 'home', 1, 'Botble\\Page\\Models\\Page', '', '2024-10-20 21:49:12', '2024-10-20 21:49:12'),
(44, 'services', 2, 'Botble\\Page\\Models\\Page', '', '2024-10-20 21:49:12', '2024-10-20 21:49:12'),
(45, 'projects', 3, 'Botble\\Page\\Models\\Page', '', '2024-10-20 21:49:12', '2024-10-20 21:49:12'),
(46, 'pricing', 4, 'Botble\\Page\\Models\\Page', '', '2024-10-20 21:49:12', '2024-10-20 21:49:12'),
(47, 'blog', 5, 'Botble\\Page\\Models\\Page', '', '2024-10-20 21:49:12', '2024-10-20 21:49:12'),
(48, 'contact', 6, 'Botble\\Page\\Models\\Page', '', '2024-10-20 21:49:12', '2024-10-20 21:49:12'),
(49, 'cookie-policy', 7, 'Botble\\Page\\Models\\Page', '', '2024-10-20 21:49:12', '2024-10-20 21:49:12'),
(50, 'bug-fixing', 7, 'Botble\\Portfolio\\Models\\Service', 'services', '2024-12-17 09:49:25', '2024-12-17 09:49:25');

-- --------------------------------------------------------

--
-- Table structure for table `slugs_translations`
--

CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) NOT NULL,
  `slugs_id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) DEFAULT NULL,
  `prefix` varchar(120) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `author_id` bigint(20) UNSIGNED DEFAULT NULL,
  `author_type` varchar(191) NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `author_id`, `author_type`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Botble CMS', NULL, 'Botble\\ACL\\Models\\User', NULL, 'published', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(2, 'JavaScript', NULL, 'Botble\\ACL\\Models\\User', NULL, 'published', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(3, 'Open Source', NULL, 'Botble\\ACL\\Models\\User', NULL, 'published', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(4, 'Web Design', NULL, 'Botble\\ACL\\Models\\User', NULL, 'published', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(5, 'API Development', NULL, 'Botble\\ACL\\Models\\User', NULL, 'published', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(6, 'Full Stack Development', NULL, 'Botble\\ACL\\Models\\User', NULL, 'published', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(7, 'Vietnam Developer', NULL, 'Botble\\ACL\\Models\\User', NULL, 'published', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(8, 'GitHub Projects', NULL, 'Botble\\ACL\\Models\\User', NULL, 'published', '2024-10-20 21:49:09', '2024-10-20 21:49:09');

-- --------------------------------------------------------

--
-- Table structure for table `tags_translations`
--

CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) NOT NULL,
  `tags_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `company` varchar(120) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `content`, `image`, `company`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Jennifer Lee', 'Working with this team was an absolute pleasure. Their attention to detail, professionalism, and understanding of my needs made the entire home buying process stress-free and enjoyable.', 'main/avatars/2.png', 'Happy Home Seeker', 'published', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(2, 'Robert Evans', 'The guidance and insights provided by this team were invaluable in helping me secure profitable investments. Their market knowledge and dedication to client success are unmatched.', 'main/avatars/1.png', 'Property Investor', 'published', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(3, 'Jessica White', 'I couldn’t have asked for a smoother selling experience. Their expert advice, flawless staging, and negotiation skills resulted in a quick sale at a great price. Truly impressive!', 'main/avatars/2.png', 'Delighted Home Seller', 'published', '2024-10-20 21:49:09', '2024-10-20 21:49:09'),
(4, 'Daniel Miller', 'From start to finish, the home buying experience was handled with care and professionalism. The team listened to all my concerns and helped me find the perfect home in no time.', 'main/avatars/2.png', 'Happy New Homeowner', 'published', '2024-10-20 21:49:09', '2024-10-20 21:49:09');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials_translations`
--

CREATE TABLE `testimonials_translations` (
  `lang_code` varchar(20) NOT NULL,
  `testimonials_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `company` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) DEFAULT NULL,
  `last_name` varchar(120) DEFAULT NULL,
  `username` varchar(60) DEFAULT NULL,
  `avatar_id` bigint(20) UNSIGNED DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT 0,
  `manage_supers` tinyint(1) NOT NULL DEFAULT 0,
  `permissions` text DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `first_name`, `last_name`, `username`, `avatar_id`, `super_user`, `manage_supers`, `permissions`, `last_login`) VALUES
(1, 'rahmantutul50@gmail.com', NULL, '$2y$12$y1BUHNBQcR5HX8Qnn3xivumkdCUlHT0FPG005V7tyIM1iE9wf8Sg2', 'cLlQ5gs3vElFZIjxPox9iaxNPq4CQhDqvISpnygXI5BGXg2ch9DvZuURHmua', '2024-10-20 21:49:07', '2024-12-07 10:47:30', 'Rahman', 'Tutul', 'rahmantutul', 54, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_meta`
--

CREATE TABLE `user_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(120) DEFAULT NULL,
  `value` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `widget_id` varchar(120) NOT NULL,
  `sidebar_id` varchar(120) NOT NULL,
  `theme` varchar(120) NOT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `data` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `widget_id`, `sidebar_id`, `theme`, `position`, `data`, `created_at`, `updated_at`) VALUES
(4, 'SiteLogoWidget', 'footer_sidebar', 'zelio', 1, '[]', '2024-10-20 21:49:12', '2024-10-20 21:49:12'),
(5, 'SocialLinkWidget', 'footer_sidebar', 'zelio', 2, '{\"name\":\"Social\"}', '2024-10-20 21:49:12', '2024-10-20 21:49:12'),
(6, 'Botble\\Widget\\Widgets\\CoreSimpleMenu', 'footer_sidebar', 'zelio', 3, '{\"id\":\"Botble\\\\Widget\\\\Widgets\\\\CoreSimpleMenu\",\"items\":[[{\"key\":\"label\",\"value\":\"Home\"},{\"key\":\"url\",\"value\":\"http:\\/\\/zelio.test\\/home\"}],[{\"key\":\"label\",\"value\":\"Services\"},{\"key\":\"url\",\"value\":\"http:\\/\\/zelio.test\\/services\"}],[{\"key\":\"label\",\"value\":\"Pricing\"},{\"key\":\"url\",\"value\":\"http:\\/\\/zelio.test\\/pricing\"}],[{\"key\":\"label\",\"value\":\"Blog\"},{\"key\":\"url\",\"value\":\"http:\\/\\/zelio.test\\/blog\"}],[{\"key\":\"label\",\"value\":\"Contact\"},{\"key\":\"url\",\"value\":\"http:\\/\\/zelio.test\\/contact\"}]]}', '2024-10-20 21:49:12', '2024-10-20 21:49:12'),
(7, 'ContactInformationWidget', 'sidebar_panel_sidebar', 'zelio', 0, '{\"id\":\"ContactInformationWidget\",\"bio\":\"I\'m always excited to take on new projects and collaborate with innovative minds.\",\"image\":\"\",\"signature\":\"\",\"details\":[[{\"key\":\"label\",\"value\":\"Phone\"},{\"key\":\"value\",\"value\":\"+880 1881053602\"},{\"key\":\"icon\",\"value\":\"ti ti-24-hours\"},{\"key\":\"url\",\"value\":\"\"}],[{\"key\":\"label\",\"value\":\"Email\"},{\"key\":\"value\",\"value\":\"ragmantutul50@gmail.com\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-gmail\"},{\"key\":\"url\",\"value\":\"\"}],[{\"key\":\"label\",\"value\":\"Website\"},{\"key\":\"value\",\"value\":\"https:\\/\\/botble.com\"},{\"key\":\"icon\"},{\"key\":\"url\",\"value\":\"\"}],[{\"key\":\"label\",\"value\":\"Address\"},{\"key\":\"value\",\"value\":\"133\\/4 East Rampura, Dhaka 1219\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-google-maps\"},{\"key\":\"url\",\"value\":\"https:\\/\\/maps.app.goo.gl\\/bTiw79zjzYJhqW268\"}]]}', '2024-12-15 10:43:32', '2024-12-15 10:43:32'),
(8, 'SocialLinkWidget', 'sidebar_panel_sidebar', 'zelio', 1, '{\"id\":\"SocialLinkWidget\"}', '2024-12-15 10:43:32', '2024-12-15 10:43:32'),
(9, 'LanguageSwitcherWidget', 'sidebar_panel_sidebar', 'zelio', 2, '{\"id\":\"LanguageSwitcherWidget\"}', '2024-12-15 10:43:32', '2024-12-15 10:43:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activations_user_id_index` (`user_id`);

--
-- Indexes for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audit_histories`
--
ALTER TABLE `audit_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audit_histories_user_id_index` (`user_id`),
  ADD KEY `audit_histories_module_index` (`module`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_parent_id_index` (`parent_id`),
  ADD KEY `categories_status_index` (`status`),
  ADD KEY `categories_created_at_index` (`created_at`);

--
-- Indexes for table `categories_translations`
--
ALTER TABLE `categories_translations`
  ADD PRIMARY KEY (`lang_code`,`categories_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_custom_fields`
--
ALTER TABLE `contact_custom_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_custom_fields_translations`
--
ALTER TABLE `contact_custom_fields_translations`
  ADD PRIMARY KEY (`lang_code`,`contact_custom_fields_id`);

--
-- Indexes for table `contact_custom_field_options`
--
ALTER TABLE `contact_custom_field_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_custom_field_options_translations`
--
ALTER TABLE `contact_custom_field_options_translations`
  ADD PRIMARY KEY (`lang_code`,`contact_custom_field_options_id`);

--
-- Indexes for table `contact_replies`
--
ALTER TABLE `contact_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  ADD KEY `dashboard_widget_settings_widget_id_index` (`widget_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs_translations`
--
ALTER TABLE `faqs_translations`
  ADD PRIMARY KEY (`lang_code`,`faqs_id`);

--
-- Indexes for table `faq_categories`
--
ALTER TABLE `faq_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq_categories_translations`
--
ALTER TABLE `faq_categories_translations`
  ADD PRIMARY KEY (`lang_code`,`faq_categories_id`);

--
-- Indexes for table `fob_comments`
--
ALTER TABLE `fob_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fob_comments_author_type_author_id_index` (`author_type`,`author_id`),
  ADD KEY `fob_comments_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  ADD KEY `fob_comments_reply_to_index` (`reply_to`),
  ADD KEY `fob_comments_reference_url_index` (`reference_url`),
  ADD KEY `fob_comments_status_index` (`status`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD KEY `lang_locale_index` (`lang_locale`),
  ADD KEY `lang_code_index` (`lang_code`),
  ADD KEY `lang_is_default_index` (`lang_is_default`);

--
-- Indexes for table `language_meta`
--
ALTER TABLE `language_meta`
  ADD PRIMARY KEY (`lang_meta_id`),
  ADD KEY `language_meta_reference_id_index` (`reference_id`),
  ADD KEY `meta_code_index` (`lang_meta_code`),
  ADD KEY `meta_origin_index` (`lang_meta_origin`),
  ADD KEY `meta_reference_type_index` (`reference_type`);

--
-- Indexes for table `media_files`
--
ALTER TABLE `media_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_files_user_id_index` (`user_id`),
  ADD KEY `media_files_index` (`folder_id`,`user_id`,`created_at`);

--
-- Indexes for table `media_folders`
--
ALTER TABLE `media_folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_folders_user_id_index` (`user_id`),
  ADD KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`);

--
-- Indexes for table `media_settings`
--
ALTER TABLE `media_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_slug_unique` (`slug`);

--
-- Indexes for table `menu_locations`
--
ALTER TABLE `menu_locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`);

--
-- Indexes for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_nodes_menu_id_index` (`menu_id`),
  ADD KEY `menu_nodes_parent_id_index` (`parent_id`),
  ADD KEY `reference_id` (`reference_id`),
  ADD KEY `reference_type` (`reference_type`);

--
-- Indexes for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_boxes_reference_id_index` (`reference_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_user_id_index` (`user_id`);

--
-- Indexes for table `pages_translations`
--
ALTER TABLE `pages_translations`
  ADD PRIMARY KEY (`lang_code`,`pages_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pf_custom_fields`
--
ALTER TABLE `pf_custom_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pf_custom_fields_author_type_author_id_index` (`author_type`,`author_id`);

--
-- Indexes for table `pf_custom_fields_translations`
--
ALTER TABLE `pf_custom_fields_translations`
  ADD PRIMARY KEY (`lang_code`,`pf_custom_fields_id`);

--
-- Indexes for table `pf_custom_field_options`
--
ALTER TABLE `pf_custom_field_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pf_custom_field_options_custom_field_id_index` (`custom_field_id`);

--
-- Indexes for table `pf_custom_field_options_translations`
--
ALTER TABLE `pf_custom_field_options_translations`
  ADD PRIMARY KEY (`lang_code`,`pf_custom_field_options_id`);

--
-- Indexes for table `pf_packages`
--
ALTER TABLE `pf_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pf_packages_translations`
--
ALTER TABLE `pf_packages_translations`
  ADD PRIMARY KEY (`lang_code`,`pf_packages_id`);

--
-- Indexes for table `pf_projects`
--
ALTER TABLE `pf_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pf_quotes`
--
ALTER TABLE `pf_quotes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pf_services`
--
ALTER TABLE `pf_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pf_services_category_id_index` (`category_id`);

--
-- Indexes for table `pf_services_translations`
--
ALTER TABLE `pf_services_translations`
  ADD PRIMARY KEY (`lang_code`,`pf_services_id`);

--
-- Indexes for table `pf_service_categories`
--
ALTER TABLE `pf_service_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pf_service_categories_parent_id_index` (`parent_id`);

--
-- Indexes for table `pf_service_categories_translations`
--
ALTER TABLE `pf_service_categories_translations`
  ADD PRIMARY KEY (`lang_code`,`pf_service_categories_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_status_index` (`status`),
  ADD KEY `posts_author_id_index` (`author_id`),
  ADD KEY `posts_author_type_index` (`author_type`),
  ADD KEY `posts_created_at_index` (`created_at`);

--
-- Indexes for table `posts_translations`
--
ALTER TABLE `posts_translations`
  ADD PRIMARY KEY (`lang_code`,`posts_id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD KEY `post_categories_category_id_index` (`category_id`),
  ADD KEY `post_categories_post_id_index` (`post_id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD KEY `post_tags_tag_id_index` (`tag_id`),
  ADD KEY `post_tags_post_id_index` (`post_id`);

--
-- Indexes for table `request_logs`
--
ALTER TABLE `request_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `revisions`
--
ALTER TABLE `revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`),
  ADD KEY `roles_created_by_index` (`created_by`),
  ADD KEY `roles_updated_by_index` (`updated_by`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_users_user_id_index` (`user_id`),
  ADD KEY `role_users_role_id_index` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `slugs`
--
ALTER TABLE `slugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slugs_reference_id_index` (`reference_id`),
  ADD KEY `slugs_key_index` (`key`),
  ADD KEY `slugs_prefix_index` (`prefix`),
  ADD KEY `slugs_reference_index` (`reference_id`,`reference_type`);

--
-- Indexes for table `slugs_translations`
--
ALTER TABLE `slugs_translations`
  ADD PRIMARY KEY (`lang_code`,`slugs_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags_translations`
--
ALTER TABLE `tags_translations`
  ADD PRIMARY KEY (`lang_code`,`tags_id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials_translations`
--
ALTER TABLE `testimonials_translations`
  ADD PRIMARY KEY (`lang_code`,`testimonials_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `user_meta`
--
ALTER TABLE `user_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_meta_user_id_index` (`user_id`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `audit_histories`
--
ALTER TABLE `audit_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_custom_fields`
--
ALTER TABLE `contact_custom_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_custom_field_options`
--
ALTER TABLE `contact_custom_field_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_replies`
--
ALTER TABLE `contact_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `faq_categories`
--
ALTER TABLE `faq_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fob_comments`
--
ALTER TABLE `fob_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `lang_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `language_meta`
--
ALTER TABLE `language_meta`
  MODIFY `lang_meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `media_files`
--
ALTER TABLE `media_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `media_folders`
--
ALTER TABLE `media_folders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `media_settings`
--
ALTER TABLE `media_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_locations`
--
ALTER TABLE `menu_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pf_custom_fields`
--
ALTER TABLE `pf_custom_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pf_custom_field_options`
--
ALTER TABLE `pf_custom_field_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pf_packages`
--
ALTER TABLE `pf_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pf_projects`
--
ALTER TABLE `pf_projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pf_quotes`
--
ALTER TABLE `pf_quotes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pf_services`
--
ALTER TABLE `pf_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pf_service_categories`
--
ALTER TABLE `pf_service_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `request_logs`
--
ALTER TABLE `request_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `revisions`
--
ALTER TABLE `revisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `slugs`
--
ALTER TABLE `slugs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_meta`
--
ALTER TABLE `user_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
