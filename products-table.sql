
CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `brand` varchar(40) NOT NULL DEFAULT 'ثبت نشده',
  `price` int(20) NOT NULL,
  `state` enum('Active','Deactive','Deleted','') NOT NULL DEFAULT 'Active',
  `offer` int(3) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `products` (`id`, `name`, `brand`, `price`, `state`, `offer`) VALUES
(1, 'دمپایی', 'نیکتا', 47000, 'Deleted', 0),
(2, 'شلوار', 'ثبت نشده', 350000, 'Active', 0),
(3, 'پیراهن', 'ثبت نشده', 250000, 'Active', 0),
(4, 'کفش', 'آدیداس', 480000, 'Active', 15),
(5, 'کلاه', 'آدیداس', 117000, 'Active', 20),
(6, 'کلاه', 'گوچی', 180000, 'Active', 0);


ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brand` (`brand`);


ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;
