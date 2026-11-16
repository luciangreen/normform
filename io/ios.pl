% 200 recorded inputs and outputs (swipl -g record -t halt io/run.pl writes this; check compares).
io(1, nf, [and(a, and(a xor false, b))], nf([a, b], [[true, true]])).
io(2, same, [and(implies(a, false), or(b, a)), not(and(c, a))], false).
io(3, nf_hash, [b xor b xor and(b, a)], 176776692).
io(4, to_expr, [nf([], [[]])], true).
io(5, nf, [false], nf([], [])).
io(6, same, [and(false, true)xor(c xor b), not(not(and(false, true)xor(c xor b)))], true).
io(7, nf_hash, [or(c, c)xor c], 114745402).
io(8, to_expr, [nf([b], [[false]])], not(b)).
io(9, nf, [or(not(c), not(implies(b, c)))], nf([c], [[false]])).
io(10, same, [implies(b, and(false, false)), false], false).
io(11, nf_hash, [or(not(a), false xor false)], 280609792).
io(12, to_expr, [nf([b], [[false]])], not(b)).
io(13, nf, [and(not(b xor true), implies(and(true, c), and(c, c)))], nf([b], [[true]])).
io(14, same, [c, not(not(c))], true).
io(15, nf_hash, [or(or(true, c), and(false, c))], 270323866).
io(16, to_expr, [nf([a], [[true]])], a).
io(17, nf, [and(and(a xor false, not(true)), true)], nf([], [])).
io(18, same, [c, implies(and(a, a), and(b, true))], false).
io(19, nf_hash, [not(false xor c)], 830430422).
io(20, to_expr, [nf([], [])], false).
io(21, nf, [implies(and(not(a), b xor c), not(implies(a, false)))], nf([a, b, c], [[false, false, false], [false, true, true], [true, false, false], [true, false, true], [true, true, false], [true, true, true]])).
io(22, same, [and(b, true)xor not(false), false], false).
io(23, nf_hash, [or(c, a)], 211355945).
io(24, to_expr, [nf([], [[]])], true).
io(25, nf, [not(false)xor(a xor and(a, a))], nf([], [[]])).
io(26, same, [implies(c, false)xor not(false), and(not(c), b)], false).
io(27, nf_hash, [or(implies(b, c), or(b, true))], 270323866).
io(28, to_expr, [nf([a], [[false]])], not(a)).
io(29, nf, [or(implies(not(b), and(a, a)), a)], nf([a, b], [[false, true], [true, false], [true, true]])).
io(30, same, [not(not(true)), implies(not(c), implies(b, false))], false).
io(31, nf_hash, [false], 114745402).
io(32, to_expr, [nf([], [])], false).
io(33, nf, [not(not(and(c, true)))], nf([c], [[true]])).
io(34, same, [or(and(false, b), false), not(not(or(and(false, b), false)))], true).
io(35, nf_hash, [b], 453682923).
io(36, to_expr, [nf([], [[]])], true).
io(37, nf, [and(and(c xor true, and(a, b)), or(a, c)xor not(b))], nf([a, b, c], [[true, true, false]])).
io(38, same, [and(implies(false, b), not(b)), not(not(and(implies(false, b), not(b))))], true).
io(39, nf_hash, [implies(implies(b, b), false)], 114745402).
io(40, to_expr, [nf([b, c], [[false, false], [true, true]])], or(and(not(b), not(c)), and(b, c))).
io(41, nf, [implies(c xor or(c, true), and(c, c)xor implies(b, false))], nf([b, c], [[false, false], [false, true], [true, true]])).
io(42, same, [or(implies(true, b), implies(c, true)), a], false).
io(43, nf_hash, [a], 735137431).
io(44, to_expr, [nf([], [[]])], true).
io(45, nf, [and(b, and(true, a))xor or(a xor c, or(b, b))], nf([a, b, c], [[false, false, true], [false, true, false], [false, true, true], [true, false, false]])).
io(46, same, [or(not(b), not(false)), not(false xor a)], false).
io(47, nf_hash, [and(or(a, b), implies(b, a))], 735137431).
io(48, to_expr, [nf([a, c], [[false, false], [true, false], [true, true]])], or(and(not(a), not(c)), or(and(a, not(c)), and(a, c)))).
io(49, nf, [not(or(or(true, b), a xor c))], nf([], [])).
io(50, same, [or(or(false, a), or(true, false)), not(not(or(or(false, a), or(true, false))))], true).
io(51, nf_hash, [not(and(c, a))], 39395302).
io(52, to_expr, [nf([a, b], [[false, true], [true, false], [true, true]])], or(and(not(a), b), or(and(a, not(b)), and(a, b)))).
io(53, nf, [b], nf([b], [[true]])).
io(54, same, [or(a, b)xor(true xor true), not(not(or(a, b)xor(true xor true)))], true).
io(55, nf_hash, [false], 114745402).
io(56, to_expr, [nf([], [[]])], true).
io(57, nf, [not(implies(b, and(c, true)))], nf([b, c], [[true, false]])).
io(58, same, [a xor c xor false, or(false, not(b))], false).
io(59, nf_hash, [and(or(b, b), true xor c)], 619871883).
io(60, to_expr, [nf([], [])], false).
io(61, nf, [a xor c xor implies(true, b)xor(implies(a, true)xor or(b, b))], nf([a, c], [[false, false], [true, true]])).
io(62, same, [implies(not(true), or(true, b)), not(not(implies(not(true), or(true, b))))], true).
io(63, nf_hash, [and(implies(c, a), c)], 624018612).
io(64, to_expr, [nf([], [])], false).
io(65, nf, [or(false xor b xor or(false, c), a)], nf([a, b, c], [[false, false, true], [false, true, false], [true, false, false], [true, false, true], [true, true, false], [true, true, true]])).
io(66, same, [implies(or(true, false), or(a, b)), not(not(implies(or(true, false), or(a, b))))], true).
io(67, nf_hash, [and(c xor a, implies(b, true))], 455561436).
io(68, to_expr, [nf([], [[]])], true).
io(69, nf, [false], nf([], [])).
io(70, same, [implies(implies(false, false), or(b, false)), a], false).
io(71, nf_hash, [implies(a, and(c, b))], 508675964).
io(72, to_expr, [nf([], [])], false).
io(73, nf, [implies(implies(c, b)xor and(false, c), not(a xor b))], nf([a, b, c], [[false, false, false], [false, false, true], [true, false, true], [true, true, false], [true, true, true]])).
io(74, same, [or(true xor c, and(a, b)), or(implies(true, b), false xor false)], false).
io(75, nf_hash, [not(implies(true, b))], 555520107).
io(76, to_expr, [nf([a], [[true]])], a).
io(77, nf, [b xor and(and(b, c), true xor false)], nf([b, c], [[true, false]])).
io(78, same, [implies(and(false, false), b xor b), implies(a, and(c, true))], false).
io(79, nf_hash, [or(and(true, false), implies(true, false))], 114745402).
io(80, to_expr, [nf([c], [[true]])], c).
io(81, nf, [not(or(and(false, false), implies(b, c)))], nf([b, c], [[true, false]])).
io(82, same, [or(or(true, b), not(c)), c xor (true xor c)], true).
io(83, nf_hash, [implies(and(b, true), not(b))], 555520107).
io(84, to_expr, [nf([c], [[true]])], c).
io(85, nf, [implies(implies(implies(false, a), b), true)], nf([], [[]])).
io(86, same, [or(not(true), false xor a), or(b, b)xor and(false, false)], false).
io(87, nf_hash, [and(not(true), or(c, c))], 114745402).
io(88, to_expr, [nf([a, c], [[false, true], [true, false], [true, true]])], or(and(not(a), c), or(and(a, not(c)), and(a, c)))).
io(89, nf, [or(a, true)xor or(false xor c, and(c, true))], nf([c], [[false]])).
io(90, same, [not(c)xor or(a, c), or(implies(false, b), a xor true)], false).
io(91, nf_hash, [or(not(a), implies(c, a))], 270323866).
io(92, to_expr, [nf([c], [[false]])], not(c)).
io(93, nf, [implies(implies(implies(false, c), and(true, false)), and(a xor b, a xor true))], nf([], [[]])).
io(94, same, [implies(a, a), not(c xor true)], false).
io(95, nf_hash, [not(true)], 114745402).
io(96, to_expr, [nf([], [[]])], true).
io(97, nf, [b], nf([b], [[true]])).
io(98, same, [implies(and(a, c), c xor b), b], false).
io(99, nf_hash, [or(not(a), implies(true, true))], 270323866).
io(100, to_expr, [nf([a, c], [[false, false], [false, true], [true, true]])], or(and(not(a), not(c)), or(and(not(a), c), and(a, c)))).
io(101, nf, [and(or(b, implies(a, false)), and(and(false, true), and(true, false)))], nf([], [])).
io(102, same, [and(and(a, false), and(b, c)), true xor or(a, true)], true).
io(103, nf_hash, [not(or(b, a))], 986261997).
io(104, to_expr, [nf([], [[]])], true).
io(105, nf, [not(b)xor true], nf([b], [[true]])).
io(106, same, [false, not(not(false))], true).
io(107, nf_hash, [c], 172228415).
io(108, to_expr, [nf([], [[]])], true).
io(109, nf, [b], nf([b], [[true]])).
io(110, same, [implies(and(true, true), c xor false), or(c, b)xor not(c)], false).
io(111, nf_hash, [not(false xor a)], 280609792).
io(112, to_expr, [nf([b], [[true]])], b).
io(113, nf, [implies(implies(implies(true, false), implies(a, c)), or(false xor true, not(a)))], nf([], [[]])).
io(114, same, [a, implies(implies(c, c), false)], false).
io(115, nf_hash, [not(implies(true, a))], 280609792).
io(116, to_expr, [nf([], [[]])], true).
io(117, nf, [implies(not(and(true, a)), false)], nf([a], [[true]])).
io(118, same, [or(or(false, false), b), and(c, c)xor not(true)], false).
io(119, nf_hash, [not(and(true, a))], 280609792).
io(120, to_expr, [nf([], [])], false).
io(121, nf, [true], nf([], [[]])).
io(122, same, [and(not(b), false), or(and(a, false), a)], false).
io(123, nf_hash, [implies(true, a)xor(b xor c)], 129346396).
io(124, to_expr, [nf([], [[]])], true).
io(125, nf, [implies(and(true, a), not(a))xor(false xor true)], nf([a], [[true]])).
io(126, same, [or(or(c, c), or(b, true)), and(false, c)xor or(c, false)], false).
io(127, nf_hash, [true xor true], 114745402).
io(128, to_expr, [nf([a], [[false]])], not(a)).
io(129, nf, [implies(implies(b, implies(a, c)), implies(implies(b, c), implies(c, false)))], nf([c], [[false]])).
io(130, same, [and(implies(true, true), true), a], false).
io(131, nf_hash, [implies(not(true), and(b, b))], 270323866).
io(132, to_expr, [nf([c], [[false]])], not(c)).
io(133, nf, [not(implies(and(b, c), and(c, true)))], nf([], [])).
io(134, same, [b, b], true).
io(135, nf_hash, [implies(and(true, c), or(true, false))], 270323866).
io(136, to_expr, [nf([], [])], false).
io(137, nf, [implies(implies(a xor c, or(b, true)), and(not(a), a xor false))], nf([], [])).
io(138, same, [and(implies(b, b), or(b, false)), not(and(a, a))], false).
io(139, nf_hash, [a], 735137431).
io(140, to_expr, [nf([b], [[true]])], b).
io(141, nf, [implies(and(b xor false, or(false, false)), not(implies(a, true)))], nf([], [[]])).
io(142, same, [a, or(implies(false, false), and(b, false))], false).
io(143, nf_hash, [implies(not(a), not(false))], 270323866).
io(144, to_expr, [nf([a, b, c], [[false, false, false], [false, false, true], [false, true, false], [false, true, true], [true, false, true], [true, true, false], [true, true, true]])], or(and(not(a), and(not(b), not(c))), or(and(not(a), and(not(b), c)), or(and(not(a), and(b, not(c))), or(and(not(a), and(b, c)), or(and(a, and(not(b), c)), or(and(a, and(b, not(c))), and(a, and(b, c))))))))).
io(145, nf, [not(or(or(false, c), b xor c))], nf([b, c], [[false, false]])).
io(146, same, [false, implies(false xor true, true)], false).
io(147, nf_hash, [a], 735137431).
io(148, to_expr, [nf([], [[]])], true).
io(149, nf, [implies(or(or(true, false), implies(a, false)), true)], nf([], [[]])).
io(150, same, [or(a xor false, and(true, true)), not(not(or(a xor false, and(true, true))))], true).
io(151, nf_hash, [implies(c, or(false, c))], 270323866).
io(152, to_expr, [nf([b], [[false]])], not(b)).
io(153, nf, [or(not(c)xor(c xor true), not(a)xor(false xor false))], nf([a], [[false]])).
io(154, same, [a xor (a xor b), not(not(a xor (a xor b)))], true).
io(155, nf_hash, [or(false, c)], 172228415).
io(156, to_expr, [nf([b, c], [[true, true]])], and(b, c)).
io(157, nf, [or(not(a), false)xor and(c xor true, c xor b)], nf([a, b, c], [[false, false, false], [false, false, true], [false, true, true], [true, true, false]])).
io(158, same, [implies(true, a)xor not(true), and(or(false, c), a xor false)], false).
io(159, nf_hash, [b], 453682923).
io(160, to_expr, [nf([], [])], false).
io(161, nf, [b xor implies(and(false, a), implies(a, c))], nf([b], [[false]])).
io(162, same, [or(not(false), implies(b, c)), true xor and(false, c)], true).
io(163, nf_hash, [not(a xor b)], 585277261).
io(164, to_expr, [nf([a, c], [[false, false], [true, false], [true, true]])], or(and(not(a), not(c)), or(and(a, not(c)), and(a, c)))).
io(165, nf, [c xor not(b)xor(and(false, true)xor(c xor b))], nf([], [[]])).
io(166, same, [implies(b, false)xor(true xor false), not(not(implies(b, false)xor(true xor false)))], true).
io(167, nf_hash, [and(true xor true, a xor true)], 114745402).
io(168, to_expr, [nf([], [[]])], true).
io(169, nf, [and(not(or(true, true)), or(implies(b, a), false))], nf([], [])).
io(170, same, [a, implies(or(true, false), true xor a)], false).
io(171, nf_hash, [not(a)xor and(b, a)], 514334005).
io(172, to_expr, [nf([], [])], false).
io(173, nf, [a], nf([a], [[true]])).
io(174, same, [b, or(a, not(c))], false).
io(175, nf_hash, [implies(not(a), implies(a, b))], 270323866).
io(176, to_expr, [nf([], [[]])], true).
io(177, nf, [and(true, or(and(false, a), false))], nf([], [])).
io(178, same, [c, not(not(c))], true).
io(179, nf_hash, [not(false)xor false], 270323866).
io(180, to_expr, [nf([], [[]])], true).
io(181, nf, [and(a, not(or(true, false)))], nf([], [])).
io(182, same, [not(implies(true, b)), not(not(not(implies(true, b))))], true).
io(183, nf_hash, [not(or(a, c))], 785744107).
io(184, to_expr, [nf([a, b], [[false, true], [true, false]])], or(and(not(a), b), and(a, not(b)))).
io(185, nf, [or(implies(c, b)xor implies(b, b), or(c xor true, a xor c))], nf([a, b, c], [[false, false, false], [false, false, true], [false, true, false], [false, true, true], [true, false, false], [true, false, true], [true, true, false]])).
io(186, same, [a, not(not(a))], true).
io(187, nf_hash, [c], 172228415).
io(188, to_expr, [nf([], [[]])], true).
io(189, nf, [implies(implies(c, a xor a), or(or(true, a), true xor false))], nf([], [[]])).
io(190, same, [b, or(and(false, false), and(true, true))], false).
io(191, nf_hash, [not(and(false, false))], 270323866).
io(192, to_expr, [nf([], [[]])], true).
io(193, nf, [implies(false xor implies(a, b), b)], nf([a, b], [[false, true], [true, false], [true, true]])).
io(194, same, [or(or(true, false), or(b, false)), not(implies(c, true))], false).
io(195, nf_hash, [not(and(true, c))], 830430422).
io(196, to_expr, [nf([], [])], false).
io(197, nf, [or(c xor b xor or(b, false), b xor a xor not(false))], nf([a, b, c], [[false, false, false], [false, false, true], [false, true, true], [true, false, true], [true, true, false], [true, true, true]])).
io(198, same, [or(or(a, true), true), not(not(or(or(a, true), true)))], true).
io(199, nf_hash, [implies(b, a xor false)], 165949170).
io(200, to_expr, [nf([], [[]])], true).
