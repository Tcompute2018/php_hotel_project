
CREATE TABLE `manager` (
  `M_id` int(20) NOT NULL,
  `M_name` varchar(30) NOT NULL,
  `M_password` varchar(30) NOT NULL,
  `M_fullname` varchar(100) NOT NULL,
  `M_email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `manager` (`M_id`, `M_name`, `M_password`, `M_fullname`, `M_email`) VALUES
(1, 'tuan', '1234', 'tuan Nguyen', 'tuanNguyen@gmail.com'),
(2, 'tom', 'tom123', 'tom Johnson', 'tomJohnson@gmail.com'),
(3, 'admin', '1234', 'admin', 'admin@admin.com');

CREATE TABLE `UserName` (
  `U_id` int(20) NOT NULL,
  `U_name` varchar(30) NOT NULL,
  `U_password` varchar(30) NOT NULL,
  `U_fullname` varchar(100) NOT NULL,
  `U_email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `UserName` (`U_id`, `U_name`, `U_password`, `U_fullname`, `U_email`) VALUES
(1, 'tuan', '4321', 'tuan Nguyen', 'Nguyen@gmail.com'),
(2, 'John', 'john123', 'Johnson', 'Johnson@gmail.com'),
(3, 'kevin', '5432', 'kevin Henson', 'kevin@gmail.com');

CREATE TABLE `rooms` (
  `room_id` int(200) NOT NULL,
  `room_cat` text NOT NULL,
  `checkin` date NOT NULL,
  `checkout` date NOT NULL,
  `name` text NOT NULL,
  `phone` int(100) NOT NULL,
  `book` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `rooms` (`room_id`, `room_cat`, `checkin`, `checkout`, `name`, `phone`, `book`) VALUES
(202, 'QUEEN SIZE', '0000-00-00', '0000-00-00', '', 0,'false'),
(204, 'QUEEN SIZE', '0000-00-00', '0000-00-00', '', 0,'false'),
(206, 'QUEEN SIZE', '0000-00-00', '0000-00-00', '', 0, 'false'),
(208, 'QUEEN SIZE', '0000-00-00', '0000-00-00', '', 0, 'false'),
(210, 'QUEEN SIZE', '0000-00-00', '0000-00-00', '', 0, 'false'),
(302, 'KING SIZE', '2021-05-19', '2021-05-22', 'tuanNguyen', 1524587558, 'true'),
(304, 'KING SIZE', '0000-00-00', '0000-00-00', '', 0, 'false'),
(306, 'KING SIZE', '0000-00-00', '0000-00-00', '', 0, 'false'),
(308, 'KING SIZE', '0000-00-00', '0000-00-00', '', 0, 'false'),
(310, 'KING SIZE', '0000-00-00', '0000-00-00', '', 0, 'false'),
(702, 'CAL KING SIZE', '0000-00-00', '0000-00-00', '', 0, 'false'),
(704, 'CAL KING SIZE', '0000-00-00', '0000-00-00', '', 0, 'false'),
(706, 'CAL KING SIZE', '0000-00-00', '0000-00-00', '', 0, 'false'),
(708, 'CAL KING SIZE', '0000-00-00', '0000-00-00', '', 0, 'false'),
(710, 'CAL KING SIZE', '0000-00-00', '0000-00-00', '', 0, 'false'),
(402, 'FULL SIZE', '0000-00-00', '0000-00-00', '', 0, 'false'),
(404, 'FULL SIZE', '0000-00-00', '0000-00-00', '', 0, 'false'),
(406, 'FULL SIZE', '0000-00-00', '0000-00-00', '', 0, 'false'),
(408, 'FULL SIZE', '0000-00-00', '0000-00-00', '', 0, 'false'),
(410, 'FULL SIZE', '0000-00-00', '0000-00-00', '', 0, 'false'),
(502, 'TWIN SIZE', '0000-00-00', '0000-00-00', '', 0, 'false'),
(504, 'TWIN SIZE', '0000-00-00', '0000-00-00', '', 0, 'false'),
(506, 'TWIM SIZE', '0000-00-00', '0000-00-00', '', 0, 'false'),
(508, 'TWIN SIZE', '0000-00-00', '0000-00-00', '', 0, 'false'),
(510, 'TWIN SIZE', '0000-00-00', '0000-00-00', '', 0,'false'),
(602, 'TWIN-XL SIZE', '0000-00-00', '0000-00-00', '', 0, 'false'),
(604, 'TWIN-XL SIZE', '0000-00-00', '0000-00-00', '', 0, 'false'),
(606, 'TWIM-XL SIZE', '0000-00-00', '0000-00-00', '', 0, 'false'),
(608, 'TWIN-XL SIZE', '0000-00-00', '0000-00-00', '', 0, 'false'),
(610, 'TWIN-XL SIZE', '0000-00-00', '0000-00-00', '', 0,'false');


CREATE TABLE `room_category` (
  `bedType` text NOT NULL,
  `roomAmount` int(11) NOT NULL,
  `Room_available` int(11) NOT NULL,
  `Room_booked` int(11) NOT NULL,
  `bed_num` int(11) NOT NULL,
  `Amenities` text NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_category`
--

INSERT INTO `room_category` (`bedType`, `roomAmount`, `Room_available`, `Room_booked`, `bed_num`, `Amenities`, `price`) VALUES

('TWIN SIZE', 5, 5, 0, 2,'TV, Cable, Internet, pool, free Parking', 100),
('TWINXL SIZE', 5, 5, 0, 2,'TV, Cable, Internet, pool, free Parking', 125),
('FULL SIZE', 5, 5, 0, 2,'TV, Cable, Internet, pool, free Parking', 150),
('QUEEN SIZE', 5, 5, 0, 1,'laundry, TV, Internet, pool, free Parking, free breakfast and lunch, gym', 175),
('KING SIZE', 5, 5, 0, 1,'laundry, TV, Internet, pool, free Parking, free breakfast and lunch, gym', 300),
('CAL KING SIZE', 5, 5, 0, 1,'laundry, TV, Internet, pool, free Parking, free breakfast and lunch, gym', 350);



CREATE TABLE `hotelList` (
  `hotel_id` int(11) NOT NULL,
  `hotels` text NOT NULL,
  `hotelAmenities` text NOT NULL,
  `room_num` int(11) NOT NULL,
  `Surcharge` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `hotelList` (`hotel_id`,`hotels`, `hotelAmenities`, `room_num`, `surcharge`) VALUES

(1,'The Magnolia All Suites','Pool, Gym, Spa, Business Office',20,25),
(2,'The Lofts at Town Centre','Pool, Gym, Business Office',60, 35),
(3,'Park North Hotel','Pool, Gym',100,15),
(4,'The Courtyard Suites','Pool, Gym, Spa, Business Office',20, 25),
(5,'The Regency Rooms','Pool, Gym, Spa, Business Office',20,25),
(6,'Town Inn Budget Rooms','Pool',150, 15),
(7,'The Comfy Motel Place','n/a',50, 10),
(8,'Sun Palace Inn','Pool, Gym',50, 25),
(9,'HomeAway Inn','Pool, Business Office',30, 25),
(10,'Rio Inn','Pool',50, 20);

ALTER TABLE `manager`
  ADD PRIMARY KEY (`M_id`);

ALTER TABLE `UserName`
  ADD PRIMARY KEY (`U_id`);

ALTER TABLE `rooms`
  ADD PRIMARY KEY (`room_id`);


ALTER TABLE `room_category`
  ADD PRIMARY KEY (`bedType`(100));

ALTER TABLE `hotelList`
  ADD PRIMARY KEY (`hotel_id`(100));

ALTER TABLE `manager`
  MODIFY `M_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `UserName`
  MODIFY `U_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `rooms`
  MODIFY `room_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
