
module dti_riscv (apb_pclk,apb_presetn,boost_en,clk,clk_uart,cts_n,gpio_i,reset_n,rx,rx_boost,gpio_o,rts_n,rts_n_boost,test_context_out,tx);
input   apb_pclk ;
input   apb_presetn ;
input   boost_en ;
input   clk ;
input   clk_uart ;
input   cts_n ;
input  [15:0] gpio_i ;
input   reset_n ;
input   rx ;
input   rx_boost ;
output  [15:0] gpio_o ;
output   rts_n ;
output   rts_n_boost ;
output  [39:0] test_context_out ;
output   tx ;
wire  [31:0] apb_paddr ;
wire   apb_penable ;
wire  [31:0] apb_prdata ;
wire   apb_pready ;
wire   apb_psel ;
wire   apb_pslverr ;
wire  [31:0] apb_pwdata ;
wire   apb_pwrite ;
wire  [31:0] dmem_address ;
wire  [31:0] dmem_data_in ;
wire  [1:0] dmem_data_size ;
wire   dmem_read_ack ;
wire   dmem_read_req ;
wire   dmem_write_ack ;
wire   dmem_write_req ;
wire   imem_ack ;
wire  [31:0] imem_address ;
wire  [31:0] imem_data_in ;
wire   imem_req ;
wire  [7:0] irq ;
wire  [31:0] mem_data_in ;
wire  [31:0] rx_boost_inst_data_in ;
wire   rx_boost_inst_wr_req ;
wire  [31:0] Tpl_38 ;
wire   Tpl_39 ;
wire   Tpl_40 ;
wire   Tpl_41 ;
wire  [31:0] Tpl_42 ;
wire  [31:0] Tpl_43 ;
wire  [1:0] Tpl_44 ;
wire   Tpl_45 ;
wire   Tpl_46 ;
wire   Tpl_47 ;
logic  [31:0] Tpl_48 ;
logic   Tpl_49 ;
logic   Tpl_50 ;
logic  [31:0] Tpl_51 ;
logic   Tpl_52 ;
logic  [31:0] Tpl_53 ;
wire   Tpl_54 ;
wire   Tpl_55 ;
logic  [31:0] Tpl_56 ;
logic   Tpl_57 ;
logic   Tpl_58 ;
logic  [31:0] Tpl_59 ;
logic   Tpl_60 ;
logic  [31:0] Tpl_61 ;
logic  [31:0] Tpl_62 ;
logic  [1:0] Tpl_63 ;
logic  [1:0] Tpl_64 ;
wire  [31:0] Tpl_65 ;
wire   Tpl_66 ;
wire   Tpl_67 ;
wire   Tpl_68 ;
wire   Tpl_69 ;
wire  [31:0] Tpl_70 ;
wire   Tpl_71 ;
wire   Tpl_72 ;
wire   Tpl_73 ;
wire  [15:0] Tpl_74 ;
wire   Tpl_75 ;
wire   Tpl_76 ;
wire  [31:0] Tpl_77 ;
wire   Tpl_78 ;
wire   Tpl_79 ;
wire  [15:0] Tpl_80 ;
wire   Tpl_81 ;
wire   Tpl_82 ;
wire   Tpl_83 ;
wire  [31:0] Tpl_84 ;
wire  [31:0] Tpl_85 ;
wire  [31:0] Tpl_86 ;
wire   Tpl_87 ;
wire   Tpl_88 ;
wire   Tpl_89 ;
wire   Tpl_90 ;
wire   Tpl_91 ;
wire   Tpl_92 ;
wire   Tpl_93 ;
wire   Tpl_94 ;
wire  [31:0] Tpl_95 ;
wire   Tpl_96 ;
wire   Tpl_97 ;
wire   Tpl_98 ;
wire  [31:0] Tpl_99 ;
wire   Tpl_100 ;
wire  [31:0] Tpl_101 ;
wire   Tpl_102 ;
wire  [15:0] Tpl_103 ;
wire  [15:0] Tpl_104 ;
logic  [15:0] Tpl_105 ;
logic   Tpl_106 ;
logic   Tpl_107 ;
logic   Tpl_108 ;
logic   Tpl_109 ;
logic   Tpl_110 ;
wire   Tpl_111 ;
wire   Tpl_112 ;
wire  [31:0] Tpl_113 ;
wire   Tpl_114 ;
wire   Tpl_115 ;
wire   Tpl_116 ;
wire  [31:0] Tpl_117 ;
wire   Tpl_118 ;
logic  [31:0] Tpl_119 ;
wire   Tpl_120 ;
wire   Tpl_121 ;
logic   Tpl_122 ;
logic   Tpl_123 ;
logic   Tpl_124 ;
logic   Tpl_125 ;
logic  [31:0] Tpl_126 ;
logic  [31:0] Tpl_127 ;
logic   Tpl_128 ;
logic   Tpl_129 ;
logic   Tpl_130 ;
logic   Tpl_131 ;
wire   Tpl_132 ;
wire   Tpl_133 ;
wire  [31:0] Tpl_134 ;
wire   Tpl_135 ;
wire   Tpl_136 ;
wire   Tpl_137 ;
wire  [31:0] Tpl_138 ;
wire   Tpl_139 ;
wire  [31:0] Tpl_140 ;
wire   Tpl_141 ;
wire   Tpl_142 ;
wire   Tpl_143 ;
wire   Tpl_144 ;
wire   Tpl_145 ;
wire   Tpl_146 ;
wire   Tpl_147 ;
wire   Tpl_148 ;
wire   Tpl_149 ;
wire  [7:0] Tpl_150 ;
wire   Tpl_151 ;
wire   Tpl_152 ;
wire   Tpl_153 ;
wire  [7:0] Tpl_154 ;
wire   Tpl_155 ;
wire   Tpl_156 ;
wire   Tpl_157 ;
wire   Tpl_158 ;
wire   Tpl_159 ;
logic  [4:0] Tpl_160 ;
logic  [8:0] Tpl_161 ;
wire   Tpl_162 ;
wire   Tpl_163 ;
wire   Tpl_164 ;
wire   Tpl_165 ;
wire   Tpl_166 ;
wire  [7:0] Tpl_167 ;
logic   Tpl_168 ;
logic   Tpl_169 ;
logic  [1:0] Tpl_170 ;
logic  [1:0] Tpl_171 ;
logic  [2:0] Tpl_172 ;
logic  [1:0] Tpl_173 ;
logic   Tpl_174 ;
wire   Tpl_175 ;
wire   Tpl_176 ;
wire   Tpl_177 ;
wire   Tpl_178 ;
wire   Tpl_179 ;
wire   Tpl_180 ;
wire   Tpl_181 ;
wire  [7:0] Tpl_182 ;
logic  [1:0] Tpl_183 ;
logic  [1:0] Tpl_184 ;
logic  [3:0] Tpl_185 ;
logic  [3:0] Tpl_186 ;
logic  [1:0] Tpl_187 ;
logic  [7:0] Tpl_188 ;
logic   Tpl_189 ;
wire   Tpl_190 ;
wire   Tpl_191 ;
wire  [31:0] Tpl_192 ;
wire   Tpl_193 ;
wire   Tpl_194 ;
wire   Tpl_195 ;
wire  [31:0] Tpl_196 ;
logic   Tpl_197 ;
logic  [31:0] Tpl_198 ;
logic   Tpl_199 ;
wire   Tpl_200 ;
wire   Tpl_201 ;
logic  [7:0] Tpl_202 ;
wire   Tpl_203 ;
logic   Tpl_204 ;
wire  [7:0] Tpl_205 ;
wire   Tpl_206 ;
wire   Tpl_207 ;
logic   Tpl_208 ;
logic   Tpl_209 ;
logic   Tpl_210 ;
logic   Tpl_211 ;
logic  [7:0] Tpl_212 ;
logic   Tpl_213 ;
logic   Tpl_214 ;
logic   Tpl_215 ;
logic   Tpl_216 ;
logic   Tpl_217 ;
logic   Tpl_218 ;
logic   Tpl_219 ;
logic   Tpl_220 ;
wire   Tpl_221 ;
wire  [7:0] Tpl_222 ;
wire   Tpl_223 ;
wire   Tpl_224 ;
wire  [4:0] Tpl_225 ;
wire   Tpl_226 ;
wire   Tpl_227 ;
wire   Tpl_228 ;
wire  [4:0] Tpl_229 ;
wire   Tpl_230 ;
wire   Tpl_231 ;
wire   Tpl_232 ;
wire   Tpl_233 ;
wire  [7:0] Tpl_234 ;
wire   Tpl_235 ;
wire   Tpl_236 ;
wire  [4:0] Tpl_237 ;
wire   Tpl_238 ;
wire   Tpl_239 ;
wire   Tpl_240 ;
wire  [4:0] Tpl_241 ;
wire   Tpl_242 ;
wire   Tpl_243 ;
wire   Tpl_244 ;
wire  [4:0] Tpl_245 ;
wire  [5:0] Tpl_246 ;
wire  [5:0] Tpl_247 ;
wire  [5:0] Tpl_248 ;
wire  [5:0] Tpl_249 ;
wire   Tpl_250 ;
wire  [4:0] Tpl_251 ;
wire  [5:0] Tpl_252 ;
wire  [5:0] Tpl_253 ;
wire  [5:0] Tpl_254 ;
wire  [5:0] Tpl_255 ;
wire   Tpl_256 ;
wire   Tpl_257 ;
wire  [5:0] Tpl_258 ;
wire  [4:0] Tpl_259 ;
logic   Tpl_260 ;
wire  [4:0] Tpl_261 ;
logic   Tpl_262 ;
wire  [5:0] Tpl_263 ;
wire  [5:0] Tpl_264 ;
logic   Tpl_265 ;
logic   Tpl_266 ;
wire   Tpl_267 ;
logic   Tpl_268 ;
wire   Tpl_269 ;
wire   Tpl_270 ;
wire  [5:0] Tpl_271 ;
wire  [5:0] Tpl_272 ;
wire   Tpl_273 ;
wire   Tpl_274 ;
wire   Tpl_275 ;
wire   Tpl_276 ;
wire   Tpl_277 ;
wire  [5:0] Tpl_278 ;
wire  [5:0] Tpl_279 ;
wire   Tpl_281 ;
wire  [4:0] Tpl_282 ;
logic  [5:0] Tpl_283 ;
wire  [5:0] Tpl_284 ;
wire  [5:0] Tpl_285 ;
wire   Tpl_286 ;
wire   Tpl_287 ;
logic  [5:0] Tpl_288 ;
wire  [5:0] Tpl_289 ;
wire  [5:0] Tpl_290 ;
wire  [5:0] Tpl_291 ;
wire   Tpl_292 ;
wire   Tpl_293 ;
wire   Tpl_294 ;
wire  [5:0] Tpl_295 ;
wire  [5:0] Tpl_296 ;
logic  [5:0] Tpl_297 ;
logic  [5:0] Tpl_298 ;
logic  [5:0] Tpl_299 ;
wire   Tpl_300 ;
wire   Tpl_301 ;
wire   Tpl_302 ;
wire  [0:0] Tpl_303 ;
wire  [0:0] Tpl_304 ;
logic  [0:0] Tpl_305 ;
logic  [0:0] Tpl_306 ;
logic  [0:0] Tpl_307 ;
wire   Tpl_308 ;
wire  [5:0] Tpl_309 ;
wire  [4:0] Tpl_310 ;
logic   Tpl_311 ;
wire  [4:0] Tpl_312 ;
logic   Tpl_313 ;
wire  [5:0] Tpl_314 ;
wire  [5:0] Tpl_315 ;
logic   Tpl_316 ;
logic   Tpl_317 ;
wire   Tpl_318 ;
logic   Tpl_319 ;
wire   Tpl_320 ;
wire   Tpl_321 ;
wire  [5:0] Tpl_322 ;
wire  [5:0] Tpl_323 ;
wire   Tpl_324 ;
wire   Tpl_325 ;
wire   Tpl_326 ;
wire   Tpl_327 ;
wire   Tpl_328 ;
wire  [5:0] Tpl_329 ;
wire  [5:0] Tpl_330 ;
wire   Tpl_332 ;
wire  [4:0] Tpl_333 ;
logic  [5:0] Tpl_334 ;
wire  [5:0] Tpl_335 ;
wire  [5:0] Tpl_336 ;
wire   Tpl_337 ;
wire   Tpl_338 ;
logic  [5:0] Tpl_339 ;
wire  [5:0] Tpl_340 ;
wire  [5:0] Tpl_341 ;
wire  [5:0] Tpl_342 ;
wire   Tpl_343 ;
wire   Tpl_344 ;
wire   Tpl_345 ;
wire  [5:0] Tpl_346 ;
wire  [5:0] Tpl_347 ;
logic  [5:0] Tpl_348 ;
logic  [5:0] Tpl_349 ;
logic  [5:0] Tpl_350 ;
wire   Tpl_351 ;
wire   Tpl_352 ;
wire   Tpl_353 ;
wire  [0:0] Tpl_354 ;
wire  [0:0] Tpl_355 ;
logic  [0:0] Tpl_356 ;
logic  [0:0] Tpl_357 ;
logic  [0:0] Tpl_358 ;
wire  [7:0] Tpl_359 ;
wire  [4:0] Tpl_360 ;
wire  [7:0] Tpl_361 ;
wire  [4:0] Tpl_362 ;
wire   Tpl_363 ;
wire   Tpl_364 ;
wire   Tpl_365 ;
logic  [31:0][7:0] Tpl_366 ;
wire   Tpl_367 ;
wire  [7:0] Tpl_368 ;
wire   Tpl_369 ;
wire   Tpl_370 ;
wire  [4:0] Tpl_371 ;
wire   Tpl_372 ;
wire   Tpl_373 ;
wire   Tpl_374 ;
wire  [4:0] Tpl_375 ;
wire   Tpl_376 ;
wire   Tpl_377 ;
wire   Tpl_378 ;
wire   Tpl_379 ;
wire  [7:0] Tpl_380 ;
wire   Tpl_381 ;
wire   Tpl_382 ;
wire  [4:0] Tpl_383 ;
wire   Tpl_384 ;
wire   Tpl_385 ;
wire   Tpl_386 ;
wire  [4:0] Tpl_387 ;
wire   Tpl_388 ;
wire   Tpl_389 ;
wire   Tpl_390 ;
wire  [4:0] Tpl_391 ;
wire  [5:0] Tpl_392 ;
wire  [5:0] Tpl_393 ;
wire  [5:0] Tpl_394 ;
wire  [5:0] Tpl_395 ;
wire   Tpl_396 ;
wire  [4:0] Tpl_397 ;
wire  [5:0] Tpl_398 ;
wire  [5:0] Tpl_399 ;
wire  [5:0] Tpl_400 ;
wire  [5:0] Tpl_401 ;
wire   Tpl_402 ;
wire   Tpl_403 ;
wire  [5:0] Tpl_404 ;
wire  [4:0] Tpl_405 ;
logic   Tpl_406 ;
wire  [4:0] Tpl_407 ;
logic   Tpl_408 ;
wire  [5:0] Tpl_409 ;
wire  [5:0] Tpl_410 ;
logic   Tpl_411 ;
logic   Tpl_412 ;
wire   Tpl_413 ;
logic   Tpl_414 ;
wire   Tpl_415 ;
wire   Tpl_416 ;
wire  [5:0] Tpl_417 ;
wire  [5:0] Tpl_418 ;
wire   Tpl_419 ;
wire   Tpl_420 ;
wire   Tpl_421 ;
wire   Tpl_422 ;
wire   Tpl_423 ;
wire  [5:0] Tpl_424 ;
wire  [5:0] Tpl_425 ;
wire   Tpl_427 ;
wire  [4:0] Tpl_428 ;
logic  [5:0] Tpl_429 ;
wire  [5:0] Tpl_430 ;
wire  [5:0] Tpl_431 ;
wire   Tpl_432 ;
wire   Tpl_433 ;
logic  [5:0] Tpl_434 ;
wire  [5:0] Tpl_435 ;
wire  [5:0] Tpl_436 ;
wire  [5:0] Tpl_437 ;
wire   Tpl_438 ;
wire   Tpl_439 ;
wire   Tpl_440 ;
wire  [5:0] Tpl_441 ;
wire  [5:0] Tpl_442 ;
logic  [5:0] Tpl_443 ;
logic  [5:0] Tpl_444 ;
logic  [5:0] Tpl_445 ;
wire   Tpl_446 ;
wire   Tpl_447 ;
wire   Tpl_448 ;
wire  [0:0] Tpl_449 ;
wire  [0:0] Tpl_450 ;
logic  [0:0] Tpl_451 ;
logic  [0:0] Tpl_452 ;
logic  [0:0] Tpl_453 ;
wire   Tpl_454 ;
wire  [5:0] Tpl_455 ;
wire  [4:0] Tpl_456 ;
logic   Tpl_457 ;
wire  [4:0] Tpl_458 ;
logic   Tpl_459 ;
wire  [5:0] Tpl_460 ;
wire  [5:0] Tpl_461 ;
logic   Tpl_462 ;
logic   Tpl_463 ;
wire   Tpl_464 ;
logic   Tpl_465 ;
wire   Tpl_466 ;
wire   Tpl_467 ;
wire  [5:0] Tpl_468 ;
wire  [5:0] Tpl_469 ;
wire   Tpl_470 ;
wire   Tpl_471 ;
wire   Tpl_472 ;
wire   Tpl_473 ;
wire   Tpl_474 ;
wire  [5:0] Tpl_475 ;
wire  [5:0] Tpl_476 ;
wire   Tpl_478 ;
wire  [4:0] Tpl_479 ;
logic  [5:0] Tpl_480 ;
wire  [5:0] Tpl_481 ;
wire  [5:0] Tpl_482 ;
wire   Tpl_483 ;
wire   Tpl_484 ;
logic  [5:0] Tpl_485 ;
wire  [5:0] Tpl_486 ;
wire  [5:0] Tpl_487 ;
wire  [5:0] Tpl_488 ;
wire   Tpl_489 ;
wire   Tpl_490 ;
wire   Tpl_491 ;
wire  [5:0] Tpl_492 ;
wire  [5:0] Tpl_493 ;
logic  [5:0] Tpl_494 ;
logic  [5:0] Tpl_495 ;
logic  [5:0] Tpl_496 ;
wire   Tpl_497 ;
wire   Tpl_498 ;
wire   Tpl_499 ;
wire  [0:0] Tpl_500 ;
wire  [0:0] Tpl_501 ;
logic  [0:0] Tpl_502 ;
logic  [0:0] Tpl_503 ;
logic  [0:0] Tpl_504 ;
wire  [7:0] Tpl_505 ;
wire  [4:0] Tpl_506 ;
wire  [7:0] Tpl_507 ;
wire  [4:0] Tpl_508 ;
wire   Tpl_509 ;
wire   Tpl_510 ;
wire   Tpl_511 ;
logic  [31:0][7:0] Tpl_512 ;
wire   Tpl_513 ;
wire   Tpl_514 ;
wire   Tpl_515 ;
wire   Tpl_516 ;
wire  [31:0] Tpl_517 ;
logic   Tpl_518 ;
logic  [4:0] Tpl_519 ;
logic   Tpl_520 ;
logic  [1:0] Tpl_521 ;
logic  [1:0] Tpl_522 ;
logic  [3:0] Tpl_523 ;
logic  [3:0] Tpl_524 ;
logic  [1:0] Tpl_525 ;
logic  [7:0] Tpl_526 ;
logic   Tpl_527 ;
logic  [31:0] Tpl_528 ;
logic  [1:0] Tpl_529 ;
wire   Tpl_530 ;
wire   Tpl_531 ;
wire  [31:0] Tpl_532 ;
wire   Tpl_533 ;
wire   Tpl_534 ;
wire   Tpl_535 ;
wire  [31:0] Tpl_536 ;
wire  [7:0] Tpl_537 ;
wire   Tpl_538 ;
wire  [31:0] Tpl_539 ;
wire  [31:0] Tpl_540 ;
wire  [1:0] Tpl_541 ;
wire   Tpl_542 ;
wire   Tpl_543 ;
wire  [31:0] Tpl_544 ;
wire   Tpl_545 ;
wire  [39:0] Tpl_546 ;
wire  [3:0] Tpl_547 ;
wire  [2:0] Tpl_548 ;
wire  [2:0] Tpl_549 ;
wire  [2:0] Tpl_550 ;
wire  [2:0] Tpl_551 ;
wire   Tpl_552 ;
wire  [31:0] Tpl_553 ;
wire   Tpl_554 ;
wire   Tpl_555 ;
wire   Tpl_556 ;
wire   Tpl_557 ;
wire  [11:0] Tpl_558 ;
wire  [11:0] Tpl_559 ;
wire  [11:0] Tpl_560 ;
wire  [11:0] Tpl_561 ;
wire  [11:0] Tpl_562 ;
wire  [31:0] Tpl_563 ;
wire  [31:0] Tpl_564 ;
wire  [31:0] Tpl_565 ;
wire   Tpl_566 ;
wire   Tpl_567 ;
wire  [31:0] Tpl_568 ;
wire  [31:0] Tpl_569 ;
wire  [1:0] Tpl_570 ;
wire  [1:0] Tpl_571 ;
wire  [1:0] Tpl_572 ;
wire  [1:0] Tpl_573 ;
wire  [2:0] Tpl_574 ;
wire   Tpl_575 ;
wire  [31:0] Tpl_576 ;
logic  [31:0] Tpl_577 ;
wire  [31:0] Tpl_578 ;
logic  [31:0] Tpl_579 ;
wire  [1:0] Tpl_580 ;
logic  [1:0] Tpl_581 ;
wire   Tpl_582 ;
logic   Tpl_583 ;
wire   Tpl_584 ;
logic   Tpl_585 ;
wire  [31:0] Tpl_586 ;
wire  [39:0] Tpl_587 ;
wire  [39:0] Tpl_588 ;
wire  [39:0] Tpl_589 ;
wire   Tpl_590 ;
wire   Tpl_591 ;
wire  [31:0] Tpl_592 ;
wire   Tpl_593 ;
wire   Tpl_594 ;
wire  [2:0] Tpl_595 ;
wire   Tpl_596 ;
wire   Tpl_597 ;
wire   Tpl_598 ;
wire   Tpl_599 ;
wire   Tpl_600 ;
wire  [31:0] Tpl_601 ;
wire  [31:0] Tpl_602 ;
wire  [31:0] Tpl_603 ;
wire   Tpl_604 ;
wire  [2:0] Tpl_605 ;
wire  [2:0] Tpl_606 ;
wire  [2:0] Tpl_607 ;
wire  [1:0] Tpl_608 ;
wire  [1:0] Tpl_609 ;
wire  [31:0] Tpl_610 ;
wire  [31:0] Tpl_611 ;
wire  [31:0] Tpl_612 ;
wire  [31:0] Tpl_613 ;
wire  [31:0] Tpl_614 ;
wire  [31:0] Tpl_615 ;
wire  [4:0] Tpl_616 ;
wire  [4:0] Tpl_617 ;
wire  [4:0] Tpl_618 ;
wire  [4:0] Tpl_619 ;
wire  [31:0] Tpl_620 ;
wire  [31:0] Tpl_621 ;
wire  [31:0] Tpl_622 ;
wire   Tpl_623 ;
wire   Tpl_624 ;
wire   Tpl_625 ;
wire   Tpl_626 ;
wire  [11:0] Tpl_627 ;
logic  [11:0] Tpl_628 ;
wire  [31:0] Tpl_629 ;
wire  [4:0] Tpl_630 ;
wire  [4:0] Tpl_631 ;
logic  [4:0] Tpl_632 ;
wire  [31:0] Tpl_633 ;
wire  [4:0] Tpl_634 ;
wire  [4:0] Tpl_635 ;
logic  [4:0] Tpl_636 ;
wire  [31:0] Tpl_637 ;
wire  [4:0] Tpl_638 ;
wire   Tpl_639 ;
wire   Tpl_640 ;
wire   Tpl_641 ;
wire   Tpl_642 ;
wire   Tpl_643 ;
wire   Tpl_644 ;
wire  [7:0] Tpl_645 ;
wire   Tpl_646 ;
logic  [39:0] Tpl_647 ;
wire  [11:0] Tpl_648 ;
logic  [31:0] Tpl_649 ;
wire  [11:0] Tpl_650 ;
wire  [31:0] Tpl_651 ;
wire  [1:0] Tpl_652 ;
wire  [39:0] Tpl_653 ;
wire   Tpl_654 ;
logic   Tpl_655 ;
logic   Tpl_656 ;
logic  [31:0] Tpl_657 ;
logic  [31:0] Tpl_658 ;
logic   Tpl_659 ;
logic   Tpl_660 ;
logic   Tpl_661 ;
logic  [2:0] Tpl_662 ;
logic  [63:0] Tpl_663 ;
logic  [63:0] Tpl_664 ;
logic  [63:0] Tpl_665 ;
logic  [2:0] Tpl_666 ;
logic  [31:0] Tpl_667 ;
logic  [31:0] Tpl_668 ;
logic  [5:0] Tpl_669 ;
logic  [31:0] Tpl_670 ;
logic  [31:0] Tpl_671 ;
logic  [31:0] Tpl_672 ;
logic  [31:0] Tpl_673 ;
logic  [31:0] Tpl_674 ;
logic   Tpl_675 ;
logic   Tpl_676 ;
logic  [39:0] Tpl_677 ;
logic   Tpl_678 ;
logic   Tpl_679 ;
wire   Tpl_680 ;
wire   Tpl_681 ;
wire   Tpl_682 ;
logic  [63:0] Tpl_683 ;
logic  [63:0] Tpl_684 ;
wire   Tpl_685 ;
wire   Tpl_686 ;
wire   Tpl_687 ;
logic  [63:0] Tpl_688 ;
logic  [63:0] Tpl_689 ;
wire   Tpl_690 ;
wire   Tpl_691 ;
wire   Tpl_692 ;
logic  [63:0] Tpl_693 ;
logic  [63:0] Tpl_694 ;
wire   Tpl_695 ;
wire   Tpl_696 ;
wire   Tpl_697 ;
wire   Tpl_698 ;
wire  [31:0] Tpl_699 ;
wire  [31:0] Tpl_700 ;
wire   Tpl_701 ;
wire   Tpl_702 ;
wire  [4:0] Tpl_703 ;
wire  [4:0] Tpl_704 ;
wire  [4:0] Tpl_705 ;
logic  [11:0] Tpl_706 ;
wire  [4:0] Tpl_707 ;
wire  [2:0] Tpl_708 ;
wire  [31:0] Tpl_709 ;
wire   Tpl_710 ;
wire  [2:0] Tpl_711 ;
wire  [2:0] Tpl_712 ;
wire  [2:0] Tpl_713 ;
wire  [3:0] Tpl_714 ;
wire  [2:0] Tpl_715 ;
wire  [1:0] Tpl_716 ;
logic   Tpl_717 ;
logic  [31:0] Tpl_718 ;
wire  [1:0] Tpl_719 ;
wire   Tpl_720 ;
wire   Tpl_721 ;
wire  [2:0] Tpl_722 ;
logic  [31:0] Tpl_723 ;
logic  [31:0] Tpl_724 ;
wire  [31:0] Tpl_725 ;
logic  [31:0] Tpl_726 ;
wire  [6:0] Tpl_727 ;
wire  [2:0] Tpl_728 ;
wire  [6:0] Tpl_729 ;
wire  [11:0] Tpl_730 ;
logic   Tpl_731 ;
logic  [2:0] Tpl_732 ;
logic   Tpl_733 ;
logic  [5:0] Tpl_734 ;
logic  [1:0] Tpl_735 ;
logic   Tpl_736 ;
logic  [3:0] Tpl_737 ;
logic  [3:0] Tpl_738 ;
logic  [3:0] Tpl_739 ;
logic  [2:0] Tpl_740 ;
logic  [1:0] Tpl_741 ;
logic   Tpl_742 ;
logic  [5:0] Tpl_743 ;
logic  [2:0] Tpl_744 ;
wire  [6:0] Tpl_745 ;
wire  [2:0] Tpl_746 ;
wire  [7:0] Tpl_747 ;
logic  [3:0] Tpl_748 ;
logic  [3:0] Tpl_749 ;
logic  [2:0] Tpl_750 ;
wire   Tpl_751 ;
wire   Tpl_752 ;
wire   Tpl_753 ;
wire   Tpl_754 ;
wire  [7:0] Tpl_755 ;
wire   Tpl_756 ;
wire   Tpl_757 ;
logic  [31:0] Tpl_758 ;
logic  [31:0] Tpl_759 ;
logic  [1:0] Tpl_760 ;
logic   Tpl_761 ;
logic   Tpl_762 ;
wire  [4:0] Tpl_763 ;
wire  [4:0] Tpl_764 ;
wire  [4:0] Tpl_765 ;
logic  [4:0] Tpl_766 ;
wire  [31:0] Tpl_767 ;
wire  [31:0] Tpl_768 ;
logic  [31:0] Tpl_769 ;
wire  [4:0] Tpl_770 ;
wire  [31:0] Tpl_771 ;
wire  [31:0] Tpl_772 ;
logic  [31:0] Tpl_773 ;
wire  [2:0] Tpl_774 ;
wire  [11:0] Tpl_775 ;
logic  [11:0] Tpl_776 ;
wire  [1:0] Tpl_777 ;
logic  [1:0] Tpl_778 ;
wire  [31:0] Tpl_779 ;
logic  [31:0] Tpl_780 ;
wire   Tpl_781 ;
wire  [2:0] Tpl_782 ;
wire  [2:0] Tpl_783 ;
wire  [3:0] Tpl_784 ;
wire   Tpl_785 ;
logic   Tpl_786 ;
wire  [2:0] Tpl_787 ;
logic  [2:0] Tpl_788 ;
wire  [2:0] Tpl_789 ;
logic  [2:0] Tpl_790 ;
wire  [1:0] Tpl_791 ;
logic  [1:0] Tpl_792 ;
wire   Tpl_793 ;
logic   Tpl_794 ;
wire   Tpl_795 ;
wire   Tpl_796 ;
wire  [31:0] Tpl_797 ;
wire  [31:0] Tpl_798 ;
logic  [31:0] Tpl_799 ;
wire   Tpl_800 ;
wire  [5:0] Tpl_801 ;
logic   Tpl_802 ;
logic  [39:0] Tpl_803 ;
logic   Tpl_804 ;
logic  [31:0] Tpl_805 ;
wire   Tpl_806 ;
wire  [4:0] Tpl_807 ;
wire  [31:0] Tpl_808 ;
wire  [11:0] Tpl_809 ;
wire  [1:0] Tpl_810 ;
wire   Tpl_811 ;
wire   Tpl_812 ;
wire  [4:0] Tpl_813 ;
wire  [31:0] Tpl_814 ;
wire  [11:0] Tpl_815 ;
wire  [1:0] Tpl_816 ;
wire   Tpl_817 ;
wire  [2:0] Tpl_818 ;
logic   Tpl_819 ;
logic  [3:0] Tpl_820 ;
logic  [2:0] Tpl_821 ;
logic  [2:0] Tpl_822 ;
logic  [31:0] Tpl_823 ;
logic  [31:0] Tpl_824 ;
logic  [31:0] Tpl_825 ;
logic  [4:0] Tpl_826 ;
logic  [4:0] Tpl_827 ;
logic  [31:0] Tpl_828 ;
logic  [31:0] Tpl_829 ;
logic  [2:0] Tpl_830 ;
logic  [1:0] Tpl_831 ;
logic  [31:0] Tpl_832 ;
logic  [31:0] Tpl_833 ;
logic  [4:0] Tpl_834 ;
logic  [2:0] Tpl_835 ;
logic  [31:0] Tpl_836 ;
logic  [31:0] Tpl_837 ;
logic  [2:0] Tpl_838 ;
logic   Tpl_839 ;
logic   Tpl_840 ;
logic  [31:0] Tpl_841 ;
logic  [31:0] Tpl_842 ;
logic  [31:0] Tpl_843 ;
logic  [1:0] Tpl_844 ;
logic  [11:0] Tpl_845 ;
logic   Tpl_846 ;
logic  [31:0] Tpl_847 ;
logic   Tpl_848 ;
logic  [5:0] Tpl_849 ;
logic   Tpl_850 ;
logic  [5:0] Tpl_851 ;
logic  [31:0] Tpl_852 ;
logic   Tpl_853 ;
logic   Tpl_854 ;
logic   Tpl_855 ;
logic  [3:0] Tpl_856 ;
logic   Tpl_857 ;
logic   Tpl_858 ;
wire  [2:0] Tpl_859 ;
wire  [31:0] Tpl_860 ;
wire  [31:0] Tpl_861 ;
wire  [4:0] Tpl_862 ;
wire  [31:0] Tpl_863 ;
wire  [31:0] Tpl_864 ;
logic  [31:0] Tpl_865 ;
wire  [2:0] Tpl_866 ;
wire  [31:0] Tpl_867 ;
wire  [31:0] Tpl_868 ;
wire  [4:0] Tpl_869 ;
wire  [31:0] Tpl_870 ;
wire  [31:0] Tpl_871 ;
logic  [31:0] Tpl_872 ;
wire  [2:0] Tpl_873 ;
wire  [31:0] Tpl_874 ;
wire  [31:0] Tpl_875 ;
logic   Tpl_876 ;
wire  [31:0] Tpl_877 ;
wire  [31:0] Tpl_878 ;
wire  [3:0] Tpl_879 ;
logic  [31:0] Tpl_880 ;
wire  [31:0] Tpl_881 ;
wire  [31:0] Tpl_882 ;
wire  [4:0] Tpl_883 ;
wire   Tpl_884 ;
wire  [1:0] Tpl_885 ;
logic  [31:0] Tpl_886 ;
logic  [31:0] Tpl_887 ;
wire   Tpl_888 ;
wire   Tpl_889 ;
wire   Tpl_890 ;
wire  [31:0] Tpl_891 ;
wire   Tpl_892 ;
wire  [31:0] Tpl_893 ;
wire   Tpl_894 ;
wire   Tpl_895 ;
wire   Tpl_896 ;
wire   Tpl_897 ;
wire   Tpl_898 ;
wire  [31:0] Tpl_899 ;
wire  [31:0] Tpl_900 ;
wire  [31:0] Tpl_901 ;
wire  [31:0] Tpl_902 ;
wire   Tpl_903 ;
logic  [31:0] Tpl_904 ;
logic  [31:0] Tpl_905 ;
logic   Tpl_906 ;
wire   Tpl_907 ;
wire   Tpl_908 ;
wire   Tpl_909 ;
wire   Tpl_910 ;
wire   Tpl_911 ;
wire  [31:0] Tpl_912 ;
wire  [31:0] Tpl_913 ;
wire   Tpl_914 ;
wire  [31:0] Tpl_915 ;
wire  [4:0] Tpl_916 ;
logic   Tpl_917 ;
logic  [31:0] Tpl_918 ;
logic  [4:0] Tpl_919 ;
wire  [2:0] Tpl_920 ;
wire  [2:0] Tpl_921 ;
wire  [1:0] Tpl_922 ;
logic  [2:0] Tpl_923 ;
wire   Tpl_924 ;
logic   Tpl_925 ;
wire   Tpl_926 ;
wire  [39:0] Tpl_927 ;
logic   Tpl_928 ;
logic  [39:0] Tpl_929 ;
wire  [11:0] Tpl_930 ;
logic  [11:0] Tpl_931 ;
wire  [1:0] Tpl_932 ;
logic  [1:0] Tpl_933 ;
wire  [31:0] Tpl_934 ;
logic  [31:0] Tpl_935 ;
logic  [2:0] Tpl_936 ;
logic  [1:0] Tpl_937 ;
logic  [31:0] Tpl_938 ;
wire   Tpl_939 ;
wire   Tpl_940 ;
wire  [4:0] Tpl_941 ;
wire  [31:0] Tpl_942 ;
wire  [4:0] Tpl_943 ;
wire  [31:0] Tpl_944 ;
wire  [4:0] Tpl_945 ;
wire  [31:0] Tpl_946 ;
wire   Tpl_947 ;
logic  [31:0][31:0] Tpl_948 ;
logic  [4:0] Tpl_949 ;
logic  [4:0] Tpl_950 ;
wire   Tpl_951 ;
wire   Tpl_952 ;
wire   Tpl_953 ;
logic   Tpl_954 ;
wire   Tpl_955 ;
wire  [39:0] Tpl_956 ;
logic   Tpl_957 ;
logic  [39:0] Tpl_958 ;
wire  [11:0] Tpl_959 ;
logic  [11:0] Tpl_960 ;
wire  [1:0] Tpl_961 ;
logic  [1:0] Tpl_962 ;
wire  [31:0] Tpl_963 ;
logic  [31:0] Tpl_964 ;
wire   Tpl_965 ;
wire  [31:0] Tpl_966 ;
wire  [4:0] Tpl_967 ;
logic   Tpl_968 ;
logic  [31:0] Tpl_969 ;
logic  [4:0] Tpl_970 ;
wire   Tpl_971 ;
wire   Tpl_972 ;
wire   Tpl_973 ;
wire  [31:0] Tpl_974 ;
wire   Tpl_975 ;
wire  [31:0] Tpl_976 ;
wire   Tpl_977 ;
logic   Tpl_978 ;
logic  [31:0] Tpl_979 ;
logic  [99:0][31:0] Tpl_980 ;
logic  [6:0] Tpl_981 ;
logic   Tpl_982 ;
logic   Tpl_983 ;


assign Tpl_38 = apb_prdata;
assign Tpl_39 = apb_pready;
assign Tpl_40 = apb_pslverr;
assign Tpl_41 = clk;
assign Tpl_42 = dmem_address;
assign Tpl_43 = mem_data_in;
assign Tpl_44 = dmem_data_size;
assign Tpl_45 = dmem_read_req;
assign Tpl_46 = dmem_write_req;
assign Tpl_47 = reset_n;
assign apb_paddr = Tpl_48;
assign apb_penable = Tpl_49;
assign apb_psel = Tpl_50;
assign apb_pwdata = Tpl_51;
assign apb_pwrite = Tpl_52;
assign dmem_data_in = Tpl_53;
assign dmem_read_ack = Tpl_54;
assign dmem_write_ack = Tpl_55;

assign Tpl_65 = apb_paddr;
assign Tpl_66 = apb_pclk;
assign Tpl_67 = apb_penable;
assign Tpl_68 = apb_presetn;
assign Tpl_69 = apb_psel;
assign Tpl_70 = apb_pwdata;
assign Tpl_71 = apb_pwrite;
assign Tpl_72 = clk_uart;
assign Tpl_73 = cts_n;
assign Tpl_74 = gpio_i;
assign Tpl_75 = reset_n;
assign Tpl_76 = rx;
assign apb_prdata = Tpl_77;
assign apb_pready = Tpl_78;
assign apb_pslverr = Tpl_79;
assign gpio_o = Tpl_80;
assign irq = Tpl_81;
assign rts_n = Tpl_82;
assign tx = Tpl_83;

assign Tpl_513 = clk;
assign Tpl_514 = reset_n;
assign Tpl_515 = rx_boost;
assign rts_n_boost = Tpl_516;
assign rx_boost_inst_data_in = Tpl_517;
assign rx_boost_inst_wr_req = Tpl_518;

assign Tpl_530 = boost_en;
assign Tpl_531 = clk;
assign Tpl_532 = dmem_data_in;
assign Tpl_533 = dmem_read_ack;
assign Tpl_534 = dmem_write_ack;
assign Tpl_535 = imem_ack;
assign Tpl_536 = imem_data_in;
assign Tpl_537 = irq;
assign Tpl_538 = reset_n;
assign dmem_address = Tpl_539;
assign mem_data_in = Tpl_540;
assign dmem_data_size = Tpl_541;
assign dmem_read_req = Tpl_542;
assign dmem_write_req = Tpl_543;
assign imem_address = Tpl_544;
assign imem_req = Tpl_545;
assign test_context_out = Tpl_546;

assign Tpl_971 = clk;
assign Tpl_972 = reset_n;
assign Tpl_973 = boost_en;
assign Tpl_974 = rx_boost_inst_data_in;
assign Tpl_975 = rx_boost_inst_wr_req;
assign Tpl_976 = imem_address;
assign Tpl_977 = imem_req;
assign imem_ack = Tpl_978;
assign imem_data_in = Tpl_979;
assign Tpl_55 = (((Tpl_63 == 2'd2) & Tpl_39) & Tpl_52);
assign Tpl_54 = (((Tpl_63 == 2'd2) & Tpl_39) & (!Tpl_52));

always @(*)
begin
case (Tpl_44)
2'b00: begin
Tpl_62 = {{24'b000000000000000000000000,Tpl_43}};
end
2'b01: begin
Tpl_62 = {{16'b0000000000000000,Tpl_43}};
end
2'b10: begin
Tpl_62 = Tpl_43;
end
default: begin
Tpl_62 = Tpl_43;
end
endcase
end


always @(*)
begin: next_state_block_proc_5
case (Tpl_63)
2'd0: begin
if ((Tpl_46 || Tpl_45))
Tpl_64 = 2'd1;
else
Tpl_64 = 2'd0;
end
2'd1: begin
if (Tpl_58)
Tpl_64 = 2'd2;
else
Tpl_64 = 2'd1;
end
2'd2: begin
if ((Tpl_39 & (Tpl_46 || Tpl_45)))
Tpl_64 = 2'd1;
else
if (Tpl_39)
Tpl_64 = 2'd0;
else
Tpl_64 = 2'd2;
end
default: Tpl_64 = 2'd0;
endcase
end


always @( posedge Tpl_41 or negedge Tpl_47 )
begin: clocked_block_proc_9
if ((!Tpl_47))
begin
Tpl_63 <= 2'd0;
Tpl_56 <= 0;
Tpl_57 <= 0;
Tpl_58 <= 0;
Tpl_59 <= 0;
Tpl_60 <= 0;
Tpl_61 <= 0;
end
else
begin
Tpl_63 <= Tpl_64;
case (Tpl_63)
2'd0: begin
if ((Tpl_46 || Tpl_45))
begin
Tpl_58 <= 1'b1;
Tpl_56 <= Tpl_42;
Tpl_60 <= Tpl_46;
if (Tpl_46)
begin
Tpl_59 <= Tpl_62;
end
end
end
2'd1: begin
if (Tpl_58)
Tpl_57 <= 1'b1;
end
2'd2: begin
if ((Tpl_39 & (Tpl_46 || Tpl_45)))
begin
Tpl_58 <= 1'b1;
Tpl_56 <= Tpl_42;
Tpl_60 <= Tpl_46;
if (Tpl_46)
begin
Tpl_59 <= Tpl_62;
end
Tpl_57 <= 1'b0;
if ((!Tpl_60))
begin
Tpl_61 <= Tpl_38;
end
end
else
if (Tpl_39)
begin
Tpl_57 <= 1'b0;
Tpl_58 <= 1'b0;
Tpl_60 <= 0;
end
end
default: begin
Tpl_57 <= 1'b0;
Tpl_58 <= 1'b0;
end
endcase
end
end


always @(*)
begin: clocked_output_proc_22
Tpl_48 = Tpl_56;
Tpl_49 = Tpl_57;
Tpl_50 = Tpl_58;
Tpl_51 = Tpl_59;
Tpl_52 = Tpl_60;
Tpl_53 = Tpl_61;
end

assign Tpl_78 = ((Tpl_89 || Tpl_87) || Tpl_88);
assign Tpl_79 = ((Tpl_92 || Tpl_90) || Tpl_91);
assign Tpl_77 = (((|Tpl_86) || (|Tpl_84)) || (|Tpl_85));

assign Tpl_93 = Tpl_68;
assign Tpl_94 = Tpl_66;
assign Tpl_95 = Tpl_65;
assign Tpl_96 = Tpl_69;
assign Tpl_97 = Tpl_67;
assign Tpl_98 = Tpl_71;
assign Tpl_99 = Tpl_70;
assign Tpl_87 = Tpl_100;
assign Tpl_84 = Tpl_101;
assign Tpl_90 = Tpl_102;
assign Tpl_103 = Tpl_74;
assign Tpl_80 = Tpl_104;

assign Tpl_111 = Tpl_68;
assign Tpl_112 = Tpl_66;
assign Tpl_113 = Tpl_65;
assign Tpl_114 = Tpl_69;
assign Tpl_115 = Tpl_67;
assign Tpl_116 = Tpl_71;
assign Tpl_117 = Tpl_70;
assign Tpl_88 = Tpl_118;
assign Tpl_85 = Tpl_119;
assign Tpl_91 = Tpl_120;
assign Tpl_81 = Tpl_121;

assign Tpl_132 = Tpl_68;
assign Tpl_133 = Tpl_66;
assign Tpl_134 = Tpl_65;
assign Tpl_135 = Tpl_69;
assign Tpl_136 = Tpl_67;
assign Tpl_137 = Tpl_71;
assign Tpl_138 = Tpl_70;
assign Tpl_89 = Tpl_139;
assign Tpl_86 = Tpl_140;
assign Tpl_92 = Tpl_141;
assign Tpl_142 = Tpl_72;
assign Tpl_143 = Tpl_75;
assign Tpl_144 = Tpl_73;
assign Tpl_83 = Tpl_145;
assign Tpl_146 = Tpl_76;
assign Tpl_82 = Tpl_147;
assign Tpl_110 = ((Tpl_95 >= 1000) & (Tpl_95 <= 1999));

always @( posedge Tpl_94 or negedge Tpl_93 )
begin
if ((~Tpl_93))
begin
Tpl_106 <= 0;
Tpl_108 <= 1'b0;
end
else
begin
if ((((Tpl_96 & Tpl_98) & Tpl_97) & Tpl_110))
begin
Tpl_106 <= 1'b1;
Tpl_108 <= 1'b0;
end
else
begin
Tpl_106 <= 1'b0;
Tpl_108 <= 1'b0;
end
end
end


always @( posedge Tpl_94 or negedge Tpl_93 )
begin
if ((~Tpl_93))
begin
Tpl_107 <= 0;
Tpl_109 <= 1'b0;
end
else
begin
if ((((Tpl_96 & (!Tpl_98)) & Tpl_97) & Tpl_110))
begin
Tpl_107 <= 1'b1;
Tpl_109 <= 1'b0;
end
else
begin
Tpl_107 <= 1'b0;
Tpl_109 <= 1'b0;
end
end
end

assign Tpl_101 = (Tpl_100 ? Tpl_103 : 0);
assign Tpl_100 = ((Tpl_96 == 1'b1) ? ((Tpl_98 & Tpl_106) | ((~Tpl_98) & Tpl_107)) : 1'b0);
assign Tpl_102 = ((Tpl_96 == 1'b1) ? ((Tpl_98 & Tpl_108) | ((~Tpl_98) & Tpl_109)) : 1'b0);

always @( posedge Tpl_94 or negedge Tpl_93 )
begin
if ((~Tpl_93))
begin
Tpl_105 <= 0;
end
else
begin
if (Tpl_100)
begin
Tpl_105 <= Tpl_99;
end
else
begin
Tpl_105 <= Tpl_105;
end
end
end

assign Tpl_104 = Tpl_105;
assign Tpl_131 = ((Tpl_113 >= 2000) & (Tpl_113 <= 2999));
assign Tpl_121 = ((Tpl_126 == Tpl_127) ? 1'b1 : 1'b0);
assign Tpl_130 = (Tpl_129 ? 1'b1 : 1'b0);

always @( posedge Tpl_112 or negedge Tpl_111 )
begin
if ((~Tpl_111))
begin
Tpl_122 <= 0;
Tpl_124 <= 1'b0;
end
else
begin
if ((((Tpl_114 & Tpl_116) & Tpl_115) & Tpl_131))
begin
Tpl_122 <= 1'b1;
Tpl_124 <= 1'b0;
end
else
begin
Tpl_122 <= 1'b0;
Tpl_124 <= 1'b0;
end
end
end


always @( posedge Tpl_112 or negedge Tpl_111 )
begin
if ((~Tpl_111))
begin
Tpl_123 <= 0;
Tpl_125 <= 1'b0;
end
else
begin
if ((((Tpl_114 & (!Tpl_116)) & Tpl_115) & Tpl_131))
begin
Tpl_123 <= 1'b1;
Tpl_125 <= 1'b0;
end
else
begin
Tpl_123 <= 1'b0;
Tpl_125 <= 1'b0;
end
end
end

assign Tpl_118 = ((Tpl_114 == 1'b1) ? ((Tpl_116 & Tpl_122) | ((~Tpl_116) & Tpl_123)) : 1'b0);
assign Tpl_120 = ((Tpl_114 == 1'b1) ? ((Tpl_116 & Tpl_124) | ((~Tpl_116) & Tpl_125)) : 1'b0);

always @( posedge Tpl_112 or negedge Tpl_111 )
begin
if ((~Tpl_111))
begin
Tpl_126 <= 0;
end
else
begin
if (Tpl_129)
begin
Tpl_126 <= 0;
end
else
if ((Tpl_128 && (Tpl_126 != Tpl_127)))
begin
Tpl_126 <= (Tpl_126 + 1);
end
end
end


always @( posedge Tpl_112 or negedge Tpl_111 )
begin
if ((~Tpl_111))
begin
Tpl_128 <= 1'b0;
Tpl_129 <= 1'b0;
Tpl_127 <= 4294967295;
end
else
begin
case (Tpl_113)
2004: begin
if ((Tpl_118 & Tpl_116))
begin
Tpl_128 <= Tpl_117[0];
Tpl_129 <= Tpl_117[1];
end
else
if (Tpl_130)
begin
Tpl_129 <= 1'b0;
end
end
2008: begin
if ((Tpl_118 & Tpl_116))
begin
Tpl_127 <= Tpl_117;
end
end
default: begin
Tpl_128 <= 1'b0;
Tpl_129 <= 1'b0;
Tpl_127 <= 4294967295;
end
endcase
end
end


always @(*)
begin
if ((Tpl_118 & (!Tpl_116)))
begin
case (Tpl_113)
2004: Tpl_119 = {{31'b0000000000000000000000000000000,Tpl_128}};
2008: Tpl_119 = Tpl_127;
default: Tpl_119 = 0;
endcase
end
else
begin
Tpl_119 = 0;
end
end

assign Tpl_121 = (Tpl_126 == Tpl_127);

assign Tpl_156 = Tpl_142;
assign Tpl_157 = Tpl_143;
assign Tpl_148 = Tpl_158;
assign Tpl_149 = Tpl_159;

assign Tpl_162 = Tpl_142;
assign Tpl_163 = Tpl_143;
assign Tpl_165 = Tpl_144;
assign Tpl_164 = Tpl_149;
assign Tpl_145 = Tpl_169;
assign Tpl_166 = Tpl_152;
assign Tpl_167 = Tpl_150;
assign Tpl_151 = Tpl_168;

assign Tpl_175 = Tpl_142;
assign Tpl_176 = Tpl_143;
assign Tpl_178 = Tpl_148;
assign Tpl_147 = Tpl_180;
assign Tpl_177 = Tpl_146;
assign Tpl_179 = Tpl_153;
assign Tpl_155 = Tpl_181;
assign Tpl_154 = Tpl_182;

assign Tpl_200 = Tpl_142;
assign Tpl_191 = Tpl_133;
assign Tpl_201 = Tpl_143;
assign Tpl_190 = Tpl_132;
assign Tpl_140 = Tpl_198;
assign Tpl_196 = Tpl_138;
assign Tpl_141 = Tpl_199;
assign Tpl_192 = Tpl_134;
assign Tpl_139 = Tpl_197;
assign Tpl_194 = Tpl_136;
assign Tpl_193 = Tpl_135;
assign Tpl_195 = Tpl_137;
assign Tpl_150 = Tpl_202;
assign Tpl_203 = Tpl_151;
assign Tpl_152 = Tpl_204;
assign Tpl_153 = Tpl_207;
assign Tpl_205 = Tpl_154;
assign Tpl_206 = Tpl_155;
assign Tpl_158 = (Tpl_160 == 0);
assign Tpl_159 = (Tpl_161 == 0);

always @( posedge Tpl_156 or negedge Tpl_157 )
begin: block_clocked_rx_acc_65
if ((~Tpl_157))
begin
Tpl_160 <= 0;
end
else
begin
if ((Tpl_160 == 27))
begin
Tpl_160 <= 0;
end
else
begin
Tpl_160 <= (Tpl_160 + 1);
end
end
end


always @( posedge Tpl_156 or negedge Tpl_157 )
begin: block_clocked_tx_acc_70
if ((~Tpl_157))
begin
Tpl_161 <= 0;
end
else
begin
if ((Tpl_161 == 434))
begin
Tpl_161 <= 0;
end
else
begin
Tpl_161 <= (Tpl_161 + 1);
end
end
end


always @(*)
begin: next_state_block_proc_75
case (Tpl_170)
2'b00: begin
if ((((!Tpl_166) & (!Tpl_165)) & Tpl_164))
begin
Tpl_171 = 2'b01;
end
else
begin
Tpl_171 = 2'b00;
end
end
2'b01: begin
if (Tpl_164)
begin
Tpl_171 = 2'b10;
end
else
begin
Tpl_171 = 2'b01;
end
end
2'b10: begin
if (Tpl_164)
begin
if ((Tpl_172 == (8 - 1)))
begin
Tpl_171 = 2'b11;
end
else
begin
Tpl_171 = 2'b10;
end
end
else
begin
Tpl_171 = 2'b10;
end
end
2'b11: begin
if (Tpl_164)
begin
if ((Tpl_173 == ((1 + 0) - 1)))
begin
Tpl_171 = 2'b00;
end
else
begin
Tpl_171 = 2'b11;
end
end
else
begin
Tpl_171 = 2'b11;
end
end
default: Tpl_171 = 2'b00;
endcase
end


always @( posedge Tpl_162 or negedge Tpl_163 )
begin: clocked_block_proc_92
if ((~Tpl_163))
begin
Tpl_170 <= 2'b00;
end
else
begin
Tpl_170 <= Tpl_171;
case (Tpl_170)
2'b00: begin
Tpl_172 <= 0;
Tpl_173 <= 0;
end
2'b01: begin
end
2'b10: begin
if (Tpl_164)
begin
Tpl_172 <= (Tpl_172 + 1);
end
end
2'b11: begin
if (Tpl_164)
begin
Tpl_173 <= (Tpl_173 + 1);
end
end
endcase
end
end


always @(*)
begin
case (Tpl_170)
2'b00: begin
Tpl_169 = 1'b1;
end
2'b01: begin
Tpl_169 = 1'b0;
end
2'b10: begin
Tpl_169 = Tpl_167[Tpl_172];
end
2'b11: begin
if (0)
begin
Tpl_169 = (^Tpl_167[7:0]);
end
else
begin
Tpl_169 = 1'b1;
end
end
endcase
end


always @( posedge Tpl_162 or negedge Tpl_163 )
begin
if ((~Tpl_163))
begin
Tpl_174 <= 1'b0;
end
else
begin
if (Tpl_174)
begin
Tpl_174 <= 1'b0;
end
else
if (((Tpl_164 && (Tpl_170 == 2'b11)) && (Tpl_173 == ((1 + 0) - 1))))
begin
Tpl_174 <= 1'b1;
end
else
begin
Tpl_174 <= Tpl_174;
end
end
end

assign Tpl_168 = (Tpl_174 & (!Tpl_166));

always @(*)
begin: next_state_block_proc_114
case (Tpl_183)
2'b00: begin
if ((Tpl_185 == 15))
begin
Tpl_184 = 2'b01;
end
else
begin
Tpl_184 = 2'b00;
end
end
2'b01: begin
if (((Tpl_185 == 15) && (Tpl_186 == 8)))
begin
Tpl_184 = 2'b10;
end
else
begin
Tpl_184 = 2'b01;
end
end
2'b10: begin
if (((Tpl_185 == 15) && (Tpl_187 == (1 + 0))))
begin
Tpl_184 = 2'b00;
end
else
begin
Tpl_184 = 2'b10;
end
end
default: Tpl_184 = 2'b00;
endcase
end


always @( posedge Tpl_175 or negedge Tpl_176 )
begin: clocked_block_proc_124
if ((~Tpl_176))
begin
Tpl_183 <= 2'b00;
Tpl_185 <= 0;
Tpl_186 <= 0;
Tpl_187 <= 0;
Tpl_188 <= 0;
end
else
begin
Tpl_183 <= Tpl_184;
case (Tpl_183)
2'b00: begin
Tpl_186 <= 0;
Tpl_187 <= 0;
if (Tpl_178)
begin
if (((!Tpl_177) || (Tpl_185 != 0)))
begin
Tpl_185 <= (Tpl_185 + 1);
end
else
if ((Tpl_185 == 15))
begin
Tpl_185 <= 0;
end
end
else
begin
Tpl_185 <= Tpl_185;
end
end
2'b01: begin
if (Tpl_178)
begin
Tpl_185 <= (Tpl_185 + 1);
if ((Tpl_185 == 8))
begin
Tpl_186 <= (Tpl_186 + 1);
Tpl_188[Tpl_186] <= Tpl_177;
end
end
end
2'b10: begin
if (Tpl_178)
begin
Tpl_185 <= (Tpl_185 + 1);
if ((Tpl_185 == 8))
begin
Tpl_187 <= (Tpl_187 + 1);
end
end
else
if ((Tpl_185 == 15))
begin
Tpl_185 <= 0;
end
end
endcase
end
end


always @( posedge Tpl_175 or negedge Tpl_176 )
begin
if ((~Tpl_176))
begin
Tpl_189 <= 0;
end
else
begin
if (Tpl_189)
begin
Tpl_189 <= 1'b0;
end
else
if ((((Tpl_183 == 2'b10) & (Tpl_187 == (1 + 0))) & (Tpl_185 == 15)))
begin
Tpl_189 <= 1'b1;
end
else
begin
Tpl_189 <= Tpl_189;
end
end
end

assign Tpl_181 = Tpl_189;
assign Tpl_182 = Tpl_188;
assign Tpl_180 = (Tpl_189 || Tpl_179);
assign Tpl_220 = ((Tpl_192 >= 0) & (Tpl_192 <= 999));

always @( posedge Tpl_191 or negedge Tpl_190 )
begin
if ((~Tpl_190))
begin
Tpl_216 <= 0;
Tpl_218 <= 1'b0;
end
else
begin
if ((((Tpl_193 & Tpl_195) & Tpl_194) & Tpl_220))
begin
Tpl_216 <= 1'b1;
Tpl_218 <= Tpl_210;
end
else
begin
Tpl_216 <= 1'b0;
Tpl_218 <= 1'b0;
end
end
end


always @( posedge Tpl_191 or negedge Tpl_190 )
begin
if ((~Tpl_190))
begin
Tpl_217 <= 0;
Tpl_219 <= 1'b0;
end
else
begin
if ((((Tpl_193 & (!Tpl_195)) & Tpl_194) & Tpl_220))
begin
Tpl_217 <= 1'b1;
Tpl_219 <= Tpl_215;
end
else
begin
Tpl_217 <= 1'b0;
Tpl_219 <= 1'b0;
end
end
end

assign Tpl_198 = (Tpl_197 ? {{24'b000000000000000000000000,Tpl_212}} : 0);
assign Tpl_197 = (Tpl_193 ? ((Tpl_195 & Tpl_216) | ((~Tpl_195) & Tpl_217)) : 1'b0);
assign Tpl_199 = (Tpl_193 ? ((Tpl_195 & Tpl_218) | ((~Tpl_195) & Tpl_219)) : 1'b0);
assign Tpl_211 = (Tpl_197 & Tpl_195);
assign Tpl_213 = ((Tpl_197 & (~Tpl_195)) & (!Tpl_214));

assign Tpl_231 = Tpl_191;
assign Tpl_232 = Tpl_190;
assign Tpl_222 = Tpl_196[7:0];
assign Tpl_221 = Tpl_211;
assign Tpl_209 = Tpl_224;
assign Tpl_210 = Tpl_223;
assign Tpl_202 = Tpl_234;
assign Tpl_243 = Tpl_200;
assign Tpl_244 = Tpl_201;
assign Tpl_233 = Tpl_203;
assign Tpl_204 = Tpl_236;

assign Tpl_377 = Tpl_200;
assign Tpl_378 = Tpl_201;
assign Tpl_368 = Tpl_205;
assign Tpl_367 = Tpl_206;
assign Tpl_207 = Tpl_370;
assign Tpl_212 = Tpl_380;
assign Tpl_389 = Tpl_191;
assign Tpl_390 = Tpl_190;
assign Tpl_379 = Tpl_213;
assign Tpl_214 = Tpl_382;
assign Tpl_215 = Tpl_381;

function integer   floor_log2_2;
input integer   value_int_i ;
begin: floor_log2_func_155
integer   ceil_log2 ;
begin

for (ceil_log2 = 0 ;((1 << ceil_log2) < value_int_i) ;ceil_log2 = (ceil_log2 + 1))
floor_log2_2 = ceil_log2;

end
if (((1 << ceil_log2) == value_int_i))
floor_log2_2 = ceil_log2;
else
floor_log2_2 = (ceil_log2 - 1);
end
endfunction


assign Tpl_257 = Tpl_233;
assign Tpl_258 = Tpl_246;
assign Tpl_259 = Tpl_241;
assign Tpl_242 = Tpl_260;
assign Tpl_261 = Tpl_237;
assign Tpl_238 = Tpl_262;
assign Tpl_263 = Tpl_247;
assign Tpl_264 = Tpl_249;
assign Tpl_236 = Tpl_265;
assign Tpl_240 = Tpl_266;
assign Tpl_250 = Tpl_267;
assign Tpl_235 = Tpl_268;
assign Tpl_269 = Tpl_243;
assign Tpl_270 = Tpl_244;

assign Tpl_281 = Tpl_250;
assign Tpl_245 = Tpl_282;
assign Tpl_248 = Tpl_283;
assign Tpl_247 = Tpl_284;
assign Tpl_246 = Tpl_285;
assign Tpl_286 = Tpl_243;
assign Tpl_287 = Tpl_244;

assign Tpl_292 = Tpl_231;
assign Tpl_293 = Tpl_243;
assign Tpl_294 = Tpl_244;
assign Tpl_295 = Tpl_254;
assign Tpl_249 = Tpl_296;

assign Tpl_300 = Tpl_231;
assign Tpl_301 = Tpl_243;
assign Tpl_302 = Tpl_244;
assign Tpl_303 = Tpl_224;
assign Tpl_239 = Tpl_304;

assign Tpl_308 = Tpl_221;
assign Tpl_309 = Tpl_252;
assign Tpl_310 = Tpl_225;
assign Tpl_226 = Tpl_311;
assign Tpl_312 = Tpl_229;
assign Tpl_230 = Tpl_313;
assign Tpl_314 = Tpl_253;
assign Tpl_315 = Tpl_255;
assign Tpl_224 = Tpl_316;
assign Tpl_228 = Tpl_317;
assign Tpl_256 = Tpl_318;
assign Tpl_223 = Tpl_319;
assign Tpl_320 = Tpl_231;
assign Tpl_321 = Tpl_232;

assign Tpl_332 = Tpl_256;
assign Tpl_251 = Tpl_333;
assign Tpl_254 = Tpl_334;
assign Tpl_253 = Tpl_335;
assign Tpl_252 = Tpl_336;
assign Tpl_337 = Tpl_231;
assign Tpl_338 = Tpl_232;

assign Tpl_343 = Tpl_243;
assign Tpl_344 = Tpl_231;
assign Tpl_345 = Tpl_232;
assign Tpl_346 = Tpl_248;
assign Tpl_255 = Tpl_347;

assign Tpl_351 = Tpl_243;
assign Tpl_352 = Tpl_231;
assign Tpl_353 = Tpl_232;
assign Tpl_354 = Tpl_236;
assign Tpl_227 = Tpl_355;

assign Tpl_234 = Tpl_359;
assign Tpl_360 = Tpl_245;
assign Tpl_361 = Tpl_222;
assign Tpl_362 = Tpl_251;
assign Tpl_364 = Tpl_256;
assign Tpl_363 = Tpl_231;
assign Tpl_365 = Tpl_232;

always @( posedge Tpl_269 or negedge Tpl_270 )
begin: PROG_FULL_STATE_PROC_157
if ((!Tpl_270))
Tpl_260 <= 1'b0;
else
Tpl_260 <= Tpl_273;
end


always @( posedge Tpl_269 or negedge Tpl_270 )
begin: PROG_EMPTY_STATE_PROC_158
if ((!Tpl_270))
Tpl_262 <= 1'b1;
else
Tpl_262 <= Tpl_274;
end

assign Tpl_272 = ((Tpl_258[5] == Tpl_271[5]) ? (Tpl_271[4:0] - Tpl_258[4:0]) : ({{1'b1,Tpl_271[4:0]}} - {{1'b0,Tpl_258[4:0]}}));
assign Tpl_273 = ((Tpl_272 > {{1'b0,Tpl_259}}) ? 1'b1 : 1'b0);
assign Tpl_274 = ((Tpl_272 < {{1'b0,Tpl_261}}) ? 1'b1 : 1'b0);

always @( posedge Tpl_269 or negedge Tpl_270 )
begin: PEAK_STATE_PROC_159
if ((!Tpl_270))
Tpl_265 <= (0 ? 1'b0 : 1'b1);
else
Tpl_265 <= Tpl_275;
end

assign Tpl_275 = ((Tpl_263 == Tpl_264) ? 1'b1 : 1'b0);

always @( posedge Tpl_269 or negedge Tpl_270 )
begin: ERROR_PROC_160
if ((!Tpl_270))
Tpl_268 <= 1'b0;
else
Tpl_268 <= Tpl_277;
end

assign Tpl_277 = ((Tpl_265 && Tpl_257) ? 1'b1 : 1'b0);
assign Tpl_267 = (((!Tpl_265) && Tpl_257) ? 1'b1 : 1'b0);

always @( posedge Tpl_269 or negedge Tpl_270 )
begin: PEAK_STATE_2_PROC_161
if ((!Tpl_270))
Tpl_266 <= (0 ? 1'b1 : 1'b0);
else
Tpl_266 <= Tpl_276;
end

assign Tpl_276 = ((Tpl_263 == {{(~Tpl_264[5:4]),Tpl_264[3:0]}}) ? 1'b1 : 1'b0);

assign Tpl_278 = Tpl_264;
assign Tpl_271 = Tpl_279;
assign Tpl_279[(6 - 1)] = Tpl_278[(6 - 1)];
assign Tpl_279[4] = (Tpl_279[(4 + 1)] ^ Tpl_278[4]);
assign Tpl_279[3] = (Tpl_279[(3 + 1)] ^ Tpl_278[3]);
assign Tpl_279[2] = (Tpl_279[(2 + 1)] ^ Tpl_278[2]);
assign Tpl_279[1] = (Tpl_279[(1 + 1)] ^ Tpl_278[1]);
assign Tpl_279[0] = (Tpl_279[(0 + 1)] ^ Tpl_278[0]);

always @( posedge Tpl_286 or negedge Tpl_287 )
begin: BIN_CNT_PROC_162
if ((!Tpl_287))
Tpl_288 <= 0;
else
Tpl_288 <= Tpl_289;
end

assign Tpl_289 = (Tpl_288 + {{({{(5){{1'b0}}}}),Tpl_281}});

always @( posedge Tpl_286 or negedge Tpl_287 )
begin: GRAY_PTR_PROC_163
if ((!Tpl_287))
Tpl_283 <= 0;
else
Tpl_283 <= Tpl_284;
end

assign Tpl_285 = Tpl_289;
assign Tpl_282 = Tpl_288[4:0];

assign Tpl_290 = Tpl_289;
assign Tpl_284 = Tpl_291;
assign Tpl_291 = ((Tpl_290 >> 1'b1) ^ Tpl_290);

always @(*)
begin
Tpl_299 = Tpl_295;
end


always @( posedge Tpl_293 or negedge Tpl_294 )
begin: FIRST_STAGE_PROC_165
if ((!Tpl_294))
begin
Tpl_297 <= 0;
Tpl_298 <= 0;
end
else
begin
Tpl_297 <= Tpl_299;
Tpl_298 <= Tpl_297;
end
end

assign Tpl_296 = Tpl_298;

always @(*)
begin
Tpl_307 = Tpl_303;
end


always @( posedge Tpl_301 or negedge Tpl_302 )
begin: FIRST_STAGE_PROC_169
if ((!Tpl_302))
begin
Tpl_305 <= 0;
Tpl_306 <= 0;
end
else
begin
Tpl_305 <= Tpl_307;
Tpl_306 <= Tpl_305;
end
end

assign Tpl_304 = Tpl_306;

always @( posedge Tpl_320 or negedge Tpl_321 )
begin: PROG_FULL_STATE_PROC_172
if ((!Tpl_321))
Tpl_311 <= 1'b0;
else
Tpl_311 <= Tpl_324;
end


always @( posedge Tpl_320 or negedge Tpl_321 )
begin: PROG_EMPTY_STATE_PROC_173
if ((!Tpl_321))
Tpl_313 <= 1'b1;
else
Tpl_313 <= Tpl_325;
end

assign Tpl_323 = ((Tpl_309[5] == Tpl_322[5]) ? (Tpl_309[4:0] - Tpl_322[4:0]) : ({{1'b1,Tpl_309[4:0]}} - {{1'b0,Tpl_322[4:0]}}));
assign Tpl_324 = ((Tpl_323 > {{1'b0,Tpl_310}}) ? 1'b1 : 1'b0);
assign Tpl_325 = ((Tpl_323 < {{1'b0,Tpl_312}}) ? 1'b1 : 1'b0);

always @( posedge Tpl_320 or negedge Tpl_321 )
begin: PEAK_STATE_PROC_174
if ((!Tpl_321))
Tpl_316 <= (1 ? 1'b0 : 1'b1);
else
Tpl_316 <= Tpl_326;
end

assign Tpl_326 = ((Tpl_314 == {{(~Tpl_315[5:4]),Tpl_315[3:0]}}) ? 1'b1 : 1'b0);

always @( posedge Tpl_320 or negedge Tpl_321 )
begin: ERROR_PROC_175
if ((!Tpl_321))
Tpl_319 <= 1'b0;
else
Tpl_319 <= Tpl_328;
end

assign Tpl_328 = ((Tpl_316 && Tpl_308) ? 1'b1 : 1'b0);
assign Tpl_318 = (((!Tpl_316) && Tpl_308) ? 1'b1 : 1'b0);

always @( posedge Tpl_320 or negedge Tpl_321 )
begin: PEAK_STATE_2_PROC_176
if ((!Tpl_321))
Tpl_317 <= (1 ? 1'b1 : 1'b0);
else
Tpl_317 <= Tpl_327;
end

assign Tpl_327 = ((Tpl_314 == Tpl_315) ? 1'b1 : 1'b0);

assign Tpl_329 = Tpl_315;
assign Tpl_322 = Tpl_330;
assign Tpl_330[(6 - 1)] = Tpl_329[(6 - 1)];
assign Tpl_330[4] = (Tpl_330[(4 + 1)] ^ Tpl_329[4]);
assign Tpl_330[3] = (Tpl_330[(3 + 1)] ^ Tpl_329[3]);
assign Tpl_330[2] = (Tpl_330[(2 + 1)] ^ Tpl_329[2]);
assign Tpl_330[1] = (Tpl_330[(1 + 1)] ^ Tpl_329[1]);
assign Tpl_330[0] = (Tpl_330[(0 + 1)] ^ Tpl_329[0]);

always @( posedge Tpl_337 or negedge Tpl_338 )
begin: BIN_CNT_PROC_177
if ((!Tpl_338))
Tpl_339 <= 0;
else
Tpl_339 <= Tpl_340;
end

assign Tpl_340 = (Tpl_339 + {{({{(5){{1'b0}}}}),Tpl_332}});

always @( posedge Tpl_337 or negedge Tpl_338 )
begin: GRAY_PTR_PROC_178
if ((!Tpl_338))
Tpl_334 <= 0;
else
Tpl_334 <= Tpl_335;
end

assign Tpl_336 = Tpl_340;
assign Tpl_333 = Tpl_339[4:0];

assign Tpl_341 = Tpl_340;
assign Tpl_335 = Tpl_342;
assign Tpl_342 = ((Tpl_341 >> 1'b1) ^ Tpl_341);

always @(*)
begin
Tpl_350 = Tpl_346;
end


always @( posedge Tpl_344 or negedge Tpl_345 )
begin: FIRST_STAGE_PROC_180
if ((!Tpl_345))
begin
Tpl_348 <= 0;
Tpl_349 <= 0;
end
else
begin
Tpl_348 <= Tpl_350;
Tpl_349 <= Tpl_348;
end
end

assign Tpl_347 = Tpl_349;

always @(*)
begin
Tpl_358 = Tpl_354;
end


always @( posedge Tpl_352 or negedge Tpl_353 )
begin: FIRST_STAGE_PROC_184
if ((!Tpl_353))
begin
Tpl_356 <= 0;
Tpl_357 <= 0;
end
else
begin
Tpl_356 <= Tpl_358;
Tpl_357 <= Tpl_356;
end
end

assign Tpl_355 = Tpl_357;
assign Tpl_359 = Tpl_366[Tpl_360];

always @( posedge Tpl_363 or negedge Tpl_365 )
begin: FF_MEM_ARRAY_PROC_187
if ((~Tpl_365))
begin
Tpl_366 <= 0;
end
else
if (Tpl_364)
begin
Tpl_366[Tpl_362] <= Tpl_361;
end
end


assign Tpl_403 = Tpl_379;
assign Tpl_404 = Tpl_392;
assign Tpl_405 = Tpl_387;
assign Tpl_388 = Tpl_406;
assign Tpl_407 = Tpl_383;
assign Tpl_384 = Tpl_408;
assign Tpl_409 = Tpl_393;
assign Tpl_410 = Tpl_395;
assign Tpl_382 = Tpl_411;
assign Tpl_386 = Tpl_412;
assign Tpl_396 = Tpl_413;
assign Tpl_381 = Tpl_414;
assign Tpl_415 = Tpl_389;
assign Tpl_416 = Tpl_390;

assign Tpl_427 = Tpl_396;
assign Tpl_391 = Tpl_428;
assign Tpl_394 = Tpl_429;
assign Tpl_393 = Tpl_430;
assign Tpl_392 = Tpl_431;
assign Tpl_432 = Tpl_389;
assign Tpl_433 = Tpl_390;

assign Tpl_438 = Tpl_377;
assign Tpl_439 = Tpl_389;
assign Tpl_440 = Tpl_390;
assign Tpl_441 = Tpl_400;
assign Tpl_395 = Tpl_442;

assign Tpl_446 = Tpl_377;
assign Tpl_447 = Tpl_389;
assign Tpl_448 = Tpl_390;
assign Tpl_449 = Tpl_370;
assign Tpl_385 = Tpl_450;

assign Tpl_454 = Tpl_367;
assign Tpl_455 = Tpl_398;
assign Tpl_456 = Tpl_371;
assign Tpl_372 = Tpl_457;
assign Tpl_458 = Tpl_375;
assign Tpl_376 = Tpl_459;
assign Tpl_460 = Tpl_399;
assign Tpl_461 = Tpl_401;
assign Tpl_370 = Tpl_462;
assign Tpl_374 = Tpl_463;
assign Tpl_402 = Tpl_464;
assign Tpl_369 = Tpl_465;
assign Tpl_466 = Tpl_377;
assign Tpl_467 = Tpl_378;

assign Tpl_478 = Tpl_402;
assign Tpl_397 = Tpl_479;
assign Tpl_400 = Tpl_480;
assign Tpl_399 = Tpl_481;
assign Tpl_398 = Tpl_482;
assign Tpl_483 = Tpl_377;
assign Tpl_484 = Tpl_378;

assign Tpl_489 = Tpl_389;
assign Tpl_490 = Tpl_377;
assign Tpl_491 = Tpl_378;
assign Tpl_492 = Tpl_394;
assign Tpl_401 = Tpl_493;

assign Tpl_497 = Tpl_389;
assign Tpl_498 = Tpl_377;
assign Tpl_499 = Tpl_378;
assign Tpl_500 = Tpl_382;
assign Tpl_373 = Tpl_501;

assign Tpl_380 = Tpl_505;
assign Tpl_506 = Tpl_391;
assign Tpl_507 = Tpl_368;
assign Tpl_508 = Tpl_397;
assign Tpl_510 = Tpl_402;
assign Tpl_509 = Tpl_377;
assign Tpl_511 = Tpl_378;

always @( posedge Tpl_415 or negedge Tpl_416 )
begin: PROG_FULL_STATE_PROC_190
if ((!Tpl_416))
Tpl_406 <= 1'b0;
else
Tpl_406 <= Tpl_419;
end


always @( posedge Tpl_415 or negedge Tpl_416 )
begin: PROG_EMPTY_STATE_PROC_191
if ((!Tpl_416))
Tpl_408 <= 1'b1;
else
Tpl_408 <= Tpl_420;
end

assign Tpl_418 = ((Tpl_404[5] == Tpl_417[5]) ? (Tpl_417[4:0] - Tpl_404[4:0]) : ({{1'b1,Tpl_417[4:0]}} - {{1'b0,Tpl_404[4:0]}}));
assign Tpl_419 = ((Tpl_418 > {{1'b0,Tpl_405}}) ? 1'b1 : 1'b0);
assign Tpl_420 = ((Tpl_418 < {{1'b0,Tpl_407}}) ? 1'b1 : 1'b0);

always @( posedge Tpl_415 or negedge Tpl_416 )
begin: PEAK_STATE_PROC_192
if ((!Tpl_416))
Tpl_411 <= (0 ? 1'b0 : 1'b1);
else
Tpl_411 <= Tpl_421;
end

assign Tpl_421 = ((Tpl_409 == Tpl_410) ? 1'b1 : 1'b0);

always @( posedge Tpl_415 or negedge Tpl_416 )
begin: ERROR_PROC_193
if ((!Tpl_416))
Tpl_414 <= 1'b0;
else
Tpl_414 <= Tpl_423;
end

assign Tpl_423 = ((Tpl_411 && Tpl_403) ? 1'b1 : 1'b0);
assign Tpl_413 = (((!Tpl_411) && Tpl_403) ? 1'b1 : 1'b0);

always @( posedge Tpl_415 or negedge Tpl_416 )
begin: PEAK_STATE_2_PROC_194
if ((!Tpl_416))
Tpl_412 <= (0 ? 1'b1 : 1'b0);
else
Tpl_412 <= Tpl_422;
end

assign Tpl_422 = ((Tpl_409 == {{(~Tpl_410[5:4]),Tpl_410[3:0]}}) ? 1'b1 : 1'b0);

assign Tpl_424 = Tpl_410;
assign Tpl_417 = Tpl_425;
assign Tpl_425[(6 - 1)] = Tpl_424[(6 - 1)];
assign Tpl_425[4] = (Tpl_425[(4 + 1)] ^ Tpl_424[4]);
assign Tpl_425[3] = (Tpl_425[(3 + 1)] ^ Tpl_424[3]);
assign Tpl_425[2] = (Tpl_425[(2 + 1)] ^ Tpl_424[2]);
assign Tpl_425[1] = (Tpl_425[(1 + 1)] ^ Tpl_424[1]);
assign Tpl_425[0] = (Tpl_425[(0 + 1)] ^ Tpl_424[0]);

always @( posedge Tpl_432 or negedge Tpl_433 )
begin: BIN_CNT_PROC_195
if ((!Tpl_433))
Tpl_434 <= 0;
else
Tpl_434 <= Tpl_435;
end

assign Tpl_435 = (Tpl_434 + {{({{(5){{1'b0}}}}),Tpl_427}});

always @( posedge Tpl_432 or negedge Tpl_433 )
begin: GRAY_PTR_PROC_196
if ((!Tpl_433))
Tpl_429 <= 0;
else
Tpl_429 <= Tpl_430;
end

assign Tpl_431 = Tpl_435;
assign Tpl_428 = Tpl_434[4:0];

assign Tpl_436 = Tpl_435;
assign Tpl_430 = Tpl_437;
assign Tpl_437 = ((Tpl_436 >> 1'b1) ^ Tpl_436);

always @(*)
begin
Tpl_445 = Tpl_441;
end


always @( posedge Tpl_439 or negedge Tpl_440 )
begin: FIRST_STAGE_PROC_198
if ((!Tpl_440))
begin
Tpl_443 <= 0;
Tpl_444 <= 0;
end
else
begin
Tpl_443 <= Tpl_445;
Tpl_444 <= Tpl_443;
end
end

assign Tpl_442 = Tpl_444;

always @(*)
begin
Tpl_453 = Tpl_449;
end


always @( posedge Tpl_447 or negedge Tpl_448 )
begin: FIRST_STAGE_PROC_202
if ((!Tpl_448))
begin
Tpl_451 <= 0;
Tpl_452 <= 0;
end
else
begin
Tpl_451 <= Tpl_453;
Tpl_452 <= Tpl_451;
end
end

assign Tpl_450 = Tpl_452;

always @( posedge Tpl_466 or negedge Tpl_467 )
begin: PROG_FULL_STATE_PROC_205
if ((!Tpl_467))
Tpl_457 <= 1'b0;
else
Tpl_457 <= Tpl_470;
end


always @( posedge Tpl_466 or negedge Tpl_467 )
begin: PROG_EMPTY_STATE_PROC_206
if ((!Tpl_467))
Tpl_459 <= 1'b1;
else
Tpl_459 <= Tpl_471;
end

assign Tpl_469 = ((Tpl_455[5] == Tpl_468[5]) ? (Tpl_455[4:0] - Tpl_468[4:0]) : ({{1'b1,Tpl_455[4:0]}} - {{1'b0,Tpl_468[4:0]}}));
assign Tpl_470 = ((Tpl_469 > {{1'b0,Tpl_456}}) ? 1'b1 : 1'b0);
assign Tpl_471 = ((Tpl_469 < {{1'b0,Tpl_458}}) ? 1'b1 : 1'b0);

always @( posedge Tpl_466 or negedge Tpl_467 )
begin: PEAK_STATE_PROC_207
if ((!Tpl_467))
Tpl_462 <= (1 ? 1'b0 : 1'b1);
else
Tpl_462 <= Tpl_472;
end

assign Tpl_472 = ((Tpl_460 == {{(~Tpl_461[5:4]),Tpl_461[3:0]}}) ? 1'b1 : 1'b0);

always @( posedge Tpl_466 or negedge Tpl_467 )
begin: ERROR_PROC_208
if ((!Tpl_467))
Tpl_465 <= 1'b0;
else
Tpl_465 <= Tpl_474;
end

assign Tpl_474 = ((Tpl_462 && Tpl_454) ? 1'b1 : 1'b0);
assign Tpl_464 = (((!Tpl_462) && Tpl_454) ? 1'b1 : 1'b0);

always @( posedge Tpl_466 or negedge Tpl_467 )
begin: PEAK_STATE_2_PROC_209
if ((!Tpl_467))
Tpl_463 <= (1 ? 1'b1 : 1'b0);
else
Tpl_463 <= Tpl_473;
end

assign Tpl_473 = ((Tpl_460 == Tpl_461) ? 1'b1 : 1'b0);

assign Tpl_475 = Tpl_461;
assign Tpl_468 = Tpl_476;
assign Tpl_476[(6 - 1)] = Tpl_475[(6 - 1)];
assign Tpl_476[4] = (Tpl_476[(4 + 1)] ^ Tpl_475[4]);
assign Tpl_476[3] = (Tpl_476[(3 + 1)] ^ Tpl_475[3]);
assign Tpl_476[2] = (Tpl_476[(2 + 1)] ^ Tpl_475[2]);
assign Tpl_476[1] = (Tpl_476[(1 + 1)] ^ Tpl_475[1]);
assign Tpl_476[0] = (Tpl_476[(0 + 1)] ^ Tpl_475[0]);

always @( posedge Tpl_483 or negedge Tpl_484 )
begin: BIN_CNT_PROC_210
if ((!Tpl_484))
Tpl_485 <= 0;
else
Tpl_485 <= Tpl_486;
end

assign Tpl_486 = (Tpl_485 + {{({{(5){{1'b0}}}}),Tpl_478}});

always @( posedge Tpl_483 or negedge Tpl_484 )
begin: GRAY_PTR_PROC_211
if ((!Tpl_484))
Tpl_480 <= 0;
else
Tpl_480 <= Tpl_481;
end

assign Tpl_482 = Tpl_486;
assign Tpl_479 = Tpl_485[4:0];

assign Tpl_487 = Tpl_486;
assign Tpl_481 = Tpl_488;
assign Tpl_488 = ((Tpl_487 >> 1'b1) ^ Tpl_487);

always @(*)
begin
Tpl_496 = Tpl_492;
end


always @( posedge Tpl_490 or negedge Tpl_491 )
begin: FIRST_STAGE_PROC_213
if ((!Tpl_491))
begin
Tpl_494 <= 0;
Tpl_495 <= 0;
end
else
begin
Tpl_494 <= Tpl_496;
Tpl_495 <= Tpl_494;
end
end

assign Tpl_493 = Tpl_495;

always @(*)
begin
Tpl_504 = Tpl_500;
end


always @( posedge Tpl_498 or negedge Tpl_499 )
begin: FIRST_STAGE_PROC_217
if ((!Tpl_499))
begin
Tpl_502 <= 0;
Tpl_503 <= 0;
end
else
begin
Tpl_502 <= Tpl_504;
Tpl_503 <= Tpl_502;
end
end

assign Tpl_501 = Tpl_503;
assign Tpl_505 = Tpl_512[Tpl_506];

always @( posedge Tpl_509 or negedge Tpl_511 )
begin: FF_MEM_ARRAY_PROC_220
if ((~Tpl_511))
begin
Tpl_512 <= 0;
end
else
if (Tpl_510)
begin
Tpl_512[Tpl_508] <= Tpl_507;
end
end

assign Tpl_520 = (~(|Tpl_519));
assign Tpl_516 = 1'b0;

always @( posedge Tpl_513 or negedge Tpl_514 )
begin
if ((~Tpl_514))
begin
Tpl_519 <= 0;
end
else
begin
if ((Tpl_519 == 27))
begin
Tpl_519 <= 0;
end
else
begin
Tpl_519 <= (Tpl_519 + 1);
end
end
end


always @(*)
begin: next_state_block_proc_228
case (Tpl_521)
2'b00: begin
if ((Tpl_523 == 15))
begin
Tpl_522 = 2'b01;
end
else
begin
Tpl_522 = 2'b00;
end
end
2'b01: begin
if (((Tpl_523 == 15) & (Tpl_524 == 8)))
begin
Tpl_522 = 2'b10;
end
else
begin
Tpl_522 = 2'b01;
end
end
2'b10: begin
if (((Tpl_523 == 15) & (Tpl_525 == (1 + 0))))
begin
Tpl_522 = 2'b00;
end
else
begin
Tpl_522 = 2'b10;
end
end
default: Tpl_522 = 2'b00;
endcase
end


always @( posedge Tpl_513 or negedge Tpl_514 )
begin: clocked_block_proc_238
if ((~Tpl_514))
begin
Tpl_521 <= 2'b00;
Tpl_523 <= 0;
Tpl_524 <= 0;
Tpl_525 <= 0;
Tpl_526 <= 0;
end
else
begin
Tpl_521 <= Tpl_522;
case (Tpl_521)
2'b00: begin
Tpl_524 <= 0;
Tpl_525 <= 0;
if (Tpl_520)
begin
if (((!Tpl_515) | (|Tpl_523)))
begin
Tpl_523 <= (Tpl_523 + 1);
end
else
if ((Tpl_523 == 15))
begin
Tpl_523 <= 0;
end
end
else
begin
Tpl_523 <= Tpl_523;
end
end
2'b01: begin
if (Tpl_520)
begin
Tpl_523 <= (Tpl_523 + 1);
if ((Tpl_523 == 8))
begin
Tpl_524 <= (Tpl_524 + 1);
Tpl_526[Tpl_524] <= Tpl_515;
end
end
end
2'b10: begin
if (Tpl_520)
begin
Tpl_523 <= (Tpl_523 + 1);
if ((Tpl_523 == 8))
begin
Tpl_525 <= (Tpl_525 + 1);
end
end
else
if ((Tpl_523 == 15))
begin
Tpl_523 <= 0;
end
end
endcase
end
end

assign Tpl_527 = ((Tpl_522 == 2'b00) & (Tpl_521 == 2'b10));

always @( posedge Tpl_513 or negedge Tpl_514 )
begin
if ((~Tpl_514))
begin
Tpl_528 <= 0;
Tpl_529 <= 0;
end
else
begin
if (Tpl_527)
begin
Tpl_528 <= {{Tpl_526,Tpl_528[31:8]}};
Tpl_529 <= (Tpl_529 + 1);
end
end
end

assign Tpl_517 = Tpl_528;

always @( posedge Tpl_513 or negedge Tpl_514 )
begin
if ((~Tpl_514))
begin
Tpl_518 <= 0;
end
else
begin
if ((Tpl_527 & (Tpl_529 == 3)))
begin
Tpl_518 <= 1'b1;
end
else
begin
Tpl_518 <= 1'b0;
end
end
end

assign Tpl_641 = ((((Tpl_607 == 3'b010) || (Tpl_607 == 3'b011)) & (!Tpl_533)) || ((Tpl_607 == 3'b100) & (!Tpl_534)));
assign Tpl_594 = ((Tpl_552 || Tpl_591) & (!Tpl_640));
assign Tpl_640 = (Tpl_596 || Tpl_641);
assign Tpl_627 = ((!Tpl_640) ? Tpl_559 : Tpl_628);

always @( posedge Tpl_531 or negedge Tpl_538 )
begin
if (Tpl_538)
begin
Tpl_628 <= 0;
end
else
begin
if ((!Tpl_640))
begin
Tpl_628 <= Tpl_559;
end
end
end

assign Tpl_631 = ((!Tpl_640) ? Tpl_630 : Tpl_632);
assign Tpl_635 = ((!Tpl_640) ? Tpl_634 : Tpl_636);

always @( posedge Tpl_531 or negedge Tpl_538 )
begin
if (Tpl_538)
begin
Tpl_632 <= 0;
Tpl_636 <= 0;
end
else
begin
if ((!Tpl_640))
begin
Tpl_632 <= Tpl_630;
Tpl_636 <= Tpl_634;
end
end
end

assign Tpl_539 = ((!Tpl_641) ? Tpl_576 : Tpl_577);
assign Tpl_541 = ((!Tpl_641) ? Tpl_580 : Tpl_581);
assign Tpl_540 = ((!Tpl_641) ? Tpl_578 : Tpl_579);
assign Tpl_542 = ((!Tpl_641) ? Tpl_582 : Tpl_583);
assign Tpl_543 = ((!Tpl_641) ? Tpl_584 : Tpl_585);

always @( posedge Tpl_531 or negedge Tpl_538 )
begin
if (Tpl_538)
begin
Tpl_577 <= 0;
Tpl_581 <= 0;
Tpl_579 <= 0;
Tpl_583 <= 0;
Tpl_585 <= 0;
end
else
begin
if ((!Tpl_641))
begin
Tpl_577 <= Tpl_576;
Tpl_581 <= Tpl_580;
Tpl_579 <= Tpl_578;
Tpl_583 <= Tpl_582;
Tpl_585 <= Tpl_584;
end
end
end


assign Tpl_643 = Tpl_531;
assign Tpl_644 = Tpl_538;
assign Tpl_645 = Tpl_537;
assign Tpl_646 = Tpl_557;
assign Tpl_546 = Tpl_647;
assign Tpl_648 = Tpl_627;
assign Tpl_629 = Tpl_649;
assign Tpl_650 = Tpl_562;
assign Tpl_651 = Tpl_565;
assign Tpl_652 = Tpl_573;
assign Tpl_653 = Tpl_589;
assign Tpl_654 = Tpl_593;
assign Tpl_639 = Tpl_655;
assign Tpl_642 = Tpl_656;
assign Tpl_610 = Tpl_657;
assign Tpl_612 = Tpl_658;
assign Tpl_597 = Tpl_659;
assign Tpl_598 = Tpl_660;

assign Tpl_695 = Tpl_531;
assign Tpl_696 = Tpl_538;
assign Tpl_697 = Tpl_594;
assign Tpl_698 = Tpl_640;
assign Tpl_699 = Tpl_603;
assign Tpl_700 = Tpl_602;
assign Tpl_701 = Tpl_604;
assign Tpl_702 = Tpl_604;
assign Tpl_630 = Tpl_703;
assign Tpl_634 = Tpl_704;
assign Tpl_617 = Tpl_705;
assign Tpl_559 = Tpl_706;
assign Tpl_638 = Tpl_707;
assign Tpl_595 = Tpl_708;
assign Tpl_601 = Tpl_709;
assign Tpl_624 = Tpl_710;
assign Tpl_551 = Tpl_711;
assign Tpl_548 = Tpl_712;
assign Tpl_549 = Tpl_713;
assign Tpl_547 = Tpl_714;
assign Tpl_606 = Tpl_715;
assign Tpl_609 = Tpl_716;
assign Tpl_554 = Tpl_717;
assign Tpl_615 = Tpl_718;
assign Tpl_571 = Tpl_719;
assign Tpl_566 = Tpl_720;
assign Tpl_575 = Tpl_721;
assign Tpl_574 = Tpl_722;

assign Tpl_751 = Tpl_531;
assign Tpl_752 = Tpl_538;
assign Tpl_753 = Tpl_640;
assign Tpl_754 = Tpl_594;
assign Tpl_755 = Tpl_537;
assign Tpl_756 = Tpl_642;
assign Tpl_757 = Tpl_639;
assign Tpl_576 = Tpl_758;
assign Tpl_578 = Tpl_759;
assign Tpl_580 = Tpl_760;
assign Tpl_582 = Tpl_761;
assign Tpl_584 = Tpl_762;
assign Tpl_763 = Tpl_631;
assign Tpl_764 = Tpl_635;
assign Tpl_765 = Tpl_617;
assign Tpl_616 = Tpl_766;
assign Tpl_767 = Tpl_633;
assign Tpl_768 = Tpl_637;
assign Tpl_620 = Tpl_769;
assign Tpl_770 = Tpl_638;
assign Tpl_771 = Tpl_601;
assign Tpl_772 = Tpl_615;
assign Tpl_614 = Tpl_773;
assign Tpl_774 = Tpl_595;
assign Tpl_775 = Tpl_560;
assign Tpl_558 = Tpl_776;
assign Tpl_777 = Tpl_571;
assign Tpl_570 = Tpl_778;
assign Tpl_779 = Tpl_569;
assign Tpl_568 = Tpl_780;
assign Tpl_781 = Tpl_567;
assign Tpl_782 = Tpl_548;
assign Tpl_783 = Tpl_549;
assign Tpl_784 = Tpl_547;
assign Tpl_785 = Tpl_624;
assign Tpl_623 = Tpl_786;
assign Tpl_787 = Tpl_551;
assign Tpl_550 = Tpl_788;
assign Tpl_789 = Tpl_606;
assign Tpl_605 = Tpl_790;
assign Tpl_791 = Tpl_609;
assign Tpl_608 = Tpl_792;
assign Tpl_793 = Tpl_554;
assign Tpl_555 = Tpl_794;
assign Tpl_795 = Tpl_600;
assign Tpl_796 = Tpl_599;
assign Tpl_797 = Tpl_611;
assign Tpl_798 = Tpl_613;
assign Tpl_592 = Tpl_799;
assign Tpl_800 = Tpl_575;
assign Tpl_801 = (Tpl_574);
assign Tpl_591 = Tpl_802;
assign Tpl_587 = Tpl_803;
assign Tpl_552 = Tpl_804;
assign Tpl_553 = Tpl_805;
assign Tpl_806 = Tpl_625;
assign Tpl_807 = Tpl_618;
assign Tpl_808 = Tpl_621;
assign Tpl_809 = Tpl_561;
assign Tpl_810 = Tpl_572;
assign Tpl_811 = Tpl_590;
assign Tpl_812 = Tpl_626;
assign Tpl_813 = Tpl_619;
assign Tpl_814 = Tpl_622;
assign Tpl_815 = Tpl_562;
assign Tpl_816 = Tpl_573;
assign Tpl_817 = Tpl_593;
assign Tpl_818 = Tpl_607;
assign Tpl_596 = Tpl_819;

assign Tpl_888 = Tpl_531;
assign Tpl_889 = Tpl_538;
assign Tpl_890 = Tpl_530;
assign Tpl_891 = Tpl_536;
assign Tpl_892 = Tpl_535;
assign Tpl_544 = Tpl_893;
assign Tpl_545 = Tpl_894;
assign Tpl_895 = Tpl_640;
assign Tpl_896 = Tpl_594;
assign Tpl_897 = Tpl_552;
assign Tpl_898 = Tpl_591;
assign Tpl_899 = Tpl_553;
assign Tpl_900 = Tpl_586;
assign Tpl_603 = Tpl_901;
assign Tpl_602 = Tpl_902;
assign Tpl_604 = Tpl_903;

assign Tpl_907 = Tpl_531;
assign Tpl_908 = Tpl_538;
assign Tpl_909 = Tpl_641;
assign Tpl_910 = Tpl_533;
assign Tpl_911 = Tpl_534;
assign Tpl_912 = Tpl_532;
assign Tpl_913 = Tpl_614;
assign Tpl_914 = Tpl_623;
assign Tpl_915 = Tpl_620;
assign Tpl_916 = Tpl_616;
assign Tpl_625 = Tpl_917;
assign Tpl_621 = Tpl_918;
assign Tpl_618 = Tpl_919;
assign Tpl_920 = Tpl_550;
assign Tpl_921 = Tpl_605;
assign Tpl_922 = Tpl_608;
assign Tpl_607 = Tpl_923;
assign Tpl_924 = Tpl_555;
assign Tpl_556 = Tpl_925;
assign Tpl_926 = Tpl_591;
assign Tpl_927 = Tpl_587;
assign Tpl_590 = Tpl_928;
assign Tpl_588 = Tpl_929;
assign Tpl_930 = Tpl_558;
assign Tpl_561 = Tpl_931;
assign Tpl_932 = Tpl_570;
assign Tpl_572 = Tpl_933;
assign Tpl_934 = Tpl_563;
assign Tpl_564 = Tpl_935;

assign Tpl_939 = Tpl_531;
assign Tpl_940 = Tpl_538;
assign Tpl_941 = Tpl_631;
assign Tpl_633 = Tpl_942;
assign Tpl_943 = Tpl_635;
assign Tpl_637 = Tpl_944;
assign Tpl_945 = Tpl_619;
assign Tpl_946 = Tpl_622;
assign Tpl_947 = Tpl_626;

assign Tpl_951 = Tpl_531;
assign Tpl_952 = Tpl_538;
assign Tpl_953 = Tpl_556;
assign Tpl_557 = Tpl_954;
assign Tpl_955 = Tpl_590;
assign Tpl_956 = Tpl_588;
assign Tpl_593 = Tpl_957;
assign Tpl_589 = Tpl_958;
assign Tpl_959 = Tpl_561;
assign Tpl_562 = Tpl_960;
assign Tpl_961 = Tpl_572;
assign Tpl_573 = Tpl_962;
assign Tpl_963 = Tpl_564;
assign Tpl_565 = Tpl_964;
assign Tpl_965 = Tpl_625;
assign Tpl_966 = Tpl_621;
assign Tpl_967 = Tpl_618;
assign Tpl_626 = Tpl_968;
assign Tpl_622 = Tpl_969;
assign Tpl_619 = Tpl_970;
assign Tpl_655 = Tpl_679;
assign Tpl_656 = Tpl_678;
assign Tpl_659 = Tpl_675;
assign Tpl_660 = Tpl_676;
assign Tpl_657 = Tpl_674;
assign Tpl_647 = Tpl_677;

always @( posedge Tpl_643 or negedge Tpl_644 )
begin
if ((~Tpl_644))
begin
Tpl_661 <= 0;
Tpl_662 <= 0;
end
else
begin
if ((Tpl_662 == (5 - 1)))
begin
Tpl_662 <= 0;
Tpl_661 <= (~Tpl_661);
end
else
begin
Tpl_662 <= (Tpl_662 + 1);
end
end
end


always @( posedge Tpl_643 or negedge Tpl_644 )
begin
if ((~Tpl_644))
begin
Tpl_666 <= 0;
Tpl_667 <= 0;
end
else
begin
if ((Tpl_666 == (5 - 1)))
begin
Tpl_666 <= 0;
Tpl_667 <= (Tpl_667 + 1);
end
else
begin
Tpl_666 <= (Tpl_666 + 1);
end
end
end


always @( posedge Tpl_643 or negedge Tpl_644 )
begin
if ((~Tpl_644))
begin
Tpl_678 <= 0;
end
else
begin
if (((Tpl_652 != 2'b00) & (Tpl_650 == 801)))
begin
Tpl_678 <= 1'b0;
end
else
if ((Tpl_667 == Tpl_668))
begin
Tpl_678 <= 1'b1;
end
end
end


always @( posedge Tpl_643 or negedge Tpl_644 )
begin
if ((~Tpl_644))
begin
Tpl_679 <= 0;
Tpl_673 <= 0;
Tpl_672 <= 0;
Tpl_674 <= 0;
Tpl_675 <= 0;
Tpl_676 <= 0;
Tpl_677 <= 0;
end
else
begin
if (Tpl_654)
begin
Tpl_675 <= Tpl_653[0];
Tpl_676 <= Tpl_653[1];
Tpl_669 <= Tpl_653[7:2];
Tpl_670 <= Tpl_653[39:8];
end
end
end


assign Tpl_680 = Tpl_643;
assign Tpl_681 = Tpl_644;
assign Tpl_682 = 1'b1;
assign Tpl_663 = Tpl_683;

assign Tpl_685 = Tpl_643;
assign Tpl_686 = Tpl_644;
assign Tpl_687 = 1'b1;
assign Tpl_664 = Tpl_688;

assign Tpl_690 = Tpl_643;
assign Tpl_691 = Tpl_644;
assign Tpl_692 = Tpl_646;
assign Tpl_665 = Tpl_693;
assign Tpl_683 = Tpl_684;

always @( posedge Tpl_680 or negedge Tpl_681 )
begin
if ((~Tpl_681))
begin
Tpl_684 <= 0;
end
else
begin
if (Tpl_682)
begin
Tpl_684 <= (Tpl_684 + 1);
end
end
end

assign Tpl_688 = Tpl_689;

always @( posedge Tpl_685 or negedge Tpl_686 )
begin
if ((~Tpl_686))
begin
Tpl_689 <= 0;
end
else
begin
if (Tpl_687)
begin
Tpl_689 <= (Tpl_689 + 1);
end
end
end

assign Tpl_693 = Tpl_694;

always @( posedge Tpl_690 or negedge Tpl_691 )
begin
if ((~Tpl_691))
begin
Tpl_694 <= 0;
end
else
begin
if (Tpl_692)
begin
Tpl_694 <= (Tpl_694 + 1);
end
end
end


always @( posedge Tpl_695 or negedge Tpl_696 )
begin
if ((~Tpl_696))
begin
Tpl_723 <= 0;
Tpl_718 <= 0;
Tpl_717 <= 0;
end
else
begin
if (Tpl_698)
begin
Tpl_717 <= 0;
end
else
if ((Tpl_697 || (!Tpl_701)))
begin
Tpl_723 <= 0;
Tpl_717 <= 0;
end
else
begin
Tpl_723 <= Tpl_699;
Tpl_717 <= Tpl_702;
Tpl_718 <= Tpl_700;
end
end
end

assign Tpl_703 = Tpl_723[19:15];
assign Tpl_704 = Tpl_723[24:20];
assign Tpl_705 = Tpl_723[11:7];
assign Tpl_707 = Tpl_723[24:20];
assign Tpl_708 = Tpl_723[14:12];
assign Tpl_709 = Tpl_724;

always @(*)
begin
if ((Tpl_724[11:0] == 770))
begin
Tpl_706 = 833;
end
else
begin
Tpl_706 = Tpl_724[11:0];
end
end


assign Tpl_724 = Tpl_726;
assign Tpl_725 = Tpl_723;

assign Tpl_727 = Tpl_723[6:0];
assign Tpl_728 = Tpl_723[14:12];
assign Tpl_729 = Tpl_723[31:25];
assign Tpl_730 = Tpl_723[31:20];
assign Tpl_710 = Tpl_731;
assign Tpl_711 = Tpl_732;
assign Tpl_712 = Tpl_737;
assign Tpl_713 = Tpl_738;
assign Tpl_714 = Tpl_739;
assign Tpl_715 = Tpl_740;
assign Tpl_716 = Tpl_741;
assign Tpl_721 = Tpl_733;
assign Tpl_722 = Tpl_734;
assign Tpl_719 = Tpl_735;
assign Tpl_720 = Tpl_736;

always @(*)
begin
case (Tpl_725[6:2])
5'b01101, 5'b00101: begin
Tpl_726 = {{Tpl_725[31:12],12'b000000000000}};
end
5'b11011: begin
Tpl_726 = {{({{(12){{Tpl_725[31]}}}}),Tpl_725[19:12],Tpl_725[20],Tpl_725[30:21],1'b0}};
end
5'b11001, 5'b00000, 5'b00100, 5'b11100: begin
Tpl_726 = {{({{(21){{Tpl_725[31]}}}}),Tpl_725[30:20]}};
end
5'b11000: begin
Tpl_726 = {{({{(20){{Tpl_725[31]}}}}),Tpl_725[7],Tpl_725[30:25],Tpl_725[11:8],1'b0}};
end
5'b01000: begin
Tpl_726 = {{({{(21){{Tpl_725[31]}}}}),Tpl_725[30:25],Tpl_725[11:7]}};
end
default: begin
Tpl_726 = 0;
end
endcase
end

assign Tpl_736 = Tpl_728[2];
assign Tpl_739 = Tpl_744;
assign Tpl_733 = (Tpl_742 || (Tpl_744 == 4'b1111));
assign Tpl_734 = ((Tpl_744 != 4'b1111) ? Tpl_743 : 6'b000010);

always @(*)
begin
case (Tpl_727)
7'b0110111: begin
Tpl_731 = 1'b1;
Tpl_742 = 1'b0;
Tpl_743 = 6'b011111;
Tpl_732 = 3'b000;
end
7'b0010111: begin
Tpl_731 = 1'b1;
Tpl_742 = 1'b0;
Tpl_743 = 6'b011111;
Tpl_732 = 3'b000;
end
7'b1101111: begin
Tpl_731 = 1'b1;
Tpl_742 = 1'b0;
Tpl_743 = 6'b011111;
Tpl_732 = 3'b001;
end
7'b1100111: begin
Tpl_731 = 1'b1;
Tpl_742 = 1'b0;
Tpl_743 = 6'b011111;
Tpl_732 = 3'b010;
end
7'b1100011: begin
Tpl_731 = 1'b0;
Tpl_742 = 1'b0;
Tpl_743 = 6'b011111;
Tpl_732 = 3'b011;
end
7'b0000011: begin
Tpl_731 = 1'b1;
Tpl_742 = 1'b0;
Tpl_743 = 6'b011111;
Tpl_732 = 3'b000;
end
7'b0100011: begin
Tpl_731 = 1'b0;
Tpl_742 = 1'b0;
Tpl_743 = 6'b011111;
Tpl_732 = 3'b000;
end
7'b0010011: begin
Tpl_731 = 1'b1;
Tpl_742 = 1'b0;
Tpl_743 = 6'b011111;
Tpl_732 = 3'b000;
end
7'b0110011: begin
Tpl_731 = 1'b1;
Tpl_742 = 1'b0;
Tpl_743 = 6'b011111;
Tpl_732 = 3'b000;
end
7'b0001111: begin
Tpl_731 = 1'b0;
Tpl_742 = 1'b0;
Tpl_743 = 6'b011111;
Tpl_732 = 3'b000;
end
7'b1110011: begin
Tpl_731 = 1'b0;
Tpl_742 = 1'b0;
Tpl_743 = 6'b011111;
Tpl_732 = 3'b000;
end
default: begin
Tpl_731 = 1'b0;
Tpl_742 = 1'b0;
Tpl_743 = 6'b000010;
Tpl_732 = 3'b000;
end
endcase
end


always @(*)
begin
if ((Tpl_727 == 7'b1110011))
begin
case (Tpl_728)
3'b001, 3'b101: begin
Tpl_735 = 2'b11;
end
3'b010, 3'b110: begin
Tpl_735 = 2'b01;
end
3'b011, 3'b111: begin
Tpl_735 = 2'b10;
end
default: begin
Tpl_735 = 2'b00;
end
endcase
end
else
begin
Tpl_735 = 2'b00;
end
end


always @(*)
begin
if ((Tpl_727 == 7'b0000011))
begin
case (Tpl_728)
3'b000: begin
Tpl_740 = 3'b010;
Tpl_741 = 2'b00;
end
3'b001: begin
Tpl_740 = 3'b010;
Tpl_741 = 2'b01;
end
3'b010: begin
Tpl_740 = 3'b010;
Tpl_741 = 2'b00;
end
3'b100: begin
Tpl_740 = 3'b011;
Tpl_741 = 2'b00;
end
3'b101: begin
Tpl_740 = 3'b011;
Tpl_741 = 2'b01;
end
default: begin
Tpl_740 = 3'b001;
Tpl_741 = 2'b10;
end
endcase
end
else
if ((Tpl_727 == 7'b0100011))
begin
case (Tpl_728)
3'b000: begin
Tpl_740 = 3'b100;
Tpl_741 = 2'b00;
end
3'b001: begin
Tpl_740 = 3'b100;
Tpl_741 = 2'b01;
end
3'b010: begin
Tpl_740 = 3'b100;
Tpl_741 = 2'b10;
end
default: begin
Tpl_740 = 3'b001;
Tpl_741 = 2'b10;
end
endcase
end
else
begin
Tpl_740 = 3'b000;
Tpl_741 = 2'b10;
end
end


assign Tpl_745 = Tpl_727;
assign Tpl_746 = Tpl_728;
assign Tpl_747 = (Tpl_729);
assign Tpl_737 = Tpl_748;
assign Tpl_738 = Tpl_749;
assign Tpl_744 = Tpl_750;

always @(*)
begin
case (Tpl_745)
7'b0110111: begin
Tpl_748 = 3'b000;
Tpl_749 = 3'b000;
Tpl_750 = 4'b1111;
end
7'b0010111: begin
Tpl_748 = 3'b000;
Tpl_749 = 3'b000;
Tpl_750 = 4'b1111;
end
7'b1101111: begin
Tpl_748 = 3'b000;
Tpl_749 = 3'b000;
Tpl_750 = 4'b1111;
end
7'b1100111: begin
Tpl_748 = 3'b000;
Tpl_749 = 3'b000;
Tpl_750 = 4'b1111;
end
7'b1100011: begin
Tpl_748 = 3'b000;
Tpl_749 = 3'b000;
Tpl_750 = 4'b1111;
end
7'b0000011: begin
Tpl_748 = 3'b000;
Tpl_749 = 3'b000;
Tpl_750 = 4'b1111;
end
7'b0100011: begin
Tpl_748 = 3'b000;
Tpl_749 = 3'b000;
Tpl_750 = 4'b1111;
end
7'b0010011: begin
Tpl_748 = 3'b000;
if (((Tpl_746 == 3'b001) | (Tpl_746 == 3'b101)))
begin
Tpl_749 = 3'b010;
end
else
begin
Tpl_749 = 3'b001;
end
case (Tpl_746)
3'b000: Tpl_750 = 4'b0101;
3'b010: Tpl_750 = 4'b0011;
3'b011: Tpl_750 = 4'b0100;
3'b100: Tpl_750 = 4'b0010;
3'b110: Tpl_750 = 4'b0001;
3'b111: Tpl_750 = 4'b0000;
3'b001: Tpl_750 = 4'b1000;
3'b101: Tpl_750 = ((Tpl_747 == 7'b0000000) ? 4'b0111 : 4'b1001);
endcase
end
7'b0110011: begin
Tpl_748 = 3'b000;
Tpl_749 = 3'b000;
case (Tpl_746)
3'b000: Tpl_750 = ((Tpl_747 == 7'b0000000) ? 4'b0101 : 4'b0110);
3'b001: Tpl_750 = 4'b1000;
3'b010: Tpl_750 = 4'b0011;
3'b011: Tpl_750 = 4'b0100;
3'b100: Tpl_750 = 4'b0010;
3'b101: Tpl_750 = ((Tpl_747 == 7'b0000000) ? 4'b0111 : 4'b1001);
3'b110: Tpl_750 = 4'b0001;
3'b111: Tpl_750 = 4'b0000;
endcase
end
7'b0001111: begin
Tpl_748 = 3'b000;
Tpl_749 = 3'b000;
Tpl_750 = 4'b1111;
end
7'b1110011: begin
Tpl_748 = 3'b000;
Tpl_749 = 3'b000;
Tpl_750 = 4'b1111;
end
default: begin
Tpl_748 = 3'b000;
Tpl_749 = 3'b000;
Tpl_750 = 4'b1111;
end
endcase
end

assign Tpl_847 = Tpl_779;
assign Tpl_769 = Tpl_825;
assign Tpl_788 = Tpl_838;
assign Tpl_790 = Tpl_830;
assign Tpl_792 = Tpl_831;
assign Tpl_778 = Tpl_844;
assign Tpl_776 = Tpl_845;
assign Tpl_773 = Tpl_832;
assign Tpl_819 = (Tpl_857 || Tpl_858);
assign Tpl_802 = Tpl_850;
assign Tpl_803 = {{Tpl_795,Tpl_796,Tpl_851,Tpl_852}};
assign Tpl_840 = ((((Tpl_838 == 3'b001) || (Tpl_838 == 3'b010)) || ((Tpl_838 == 3'b011) && Tpl_839)) || ((Tpl_838 == 3'b100) && (!Tpl_753)));
assign Tpl_804 = Tpl_840;
assign Tpl_805 = Tpl_841;
assign Tpl_799 = Tpl_843;
assign Tpl_850 = ((!Tpl_753) && (Tpl_848 || (Tpl_851 != 6'b011111)));
assign Tpl_851 = 6'b011111;
assign Tpl_855 = ((Tpl_795 == 1'b1) & ((|Tpl_755) && (Tpl_842[31:24] != 0)));
assign Tpl_828 = Tpl_767;
assign Tpl_829 = Tpl_768;
assign Tpl_758 = ((((Tpl_830 != 3'b000) && (Tpl_830 != 3'b001)) && (!Tpl_850)) ? Tpl_825 : 0);
assign Tpl_759 = Tpl_837;
assign Tpl_762 = (((Tpl_830 == 3'b100) && (!Tpl_850)) ? 1'b1 : 1'b0);
assign Tpl_761 = (((Tpl_830 == 3'b010) || ((Tpl_830 == 3'b011) && (!Tpl_850))) ? 1'b1 : 1'b0);

always @( posedge Tpl_751 or negedge Tpl_752 )
begin
if ((!Tpl_752))
begin
Tpl_786 <= 0;
Tpl_838 <= 3'b000;
Tpl_844 <= 2'b00;
Tpl_848 <= 1'b0;
Tpl_794 <= 1'b0;
Tpl_830 <= 0;
Tpl_832 <= 0;
Tpl_831 <= 0;
Tpl_849 <= 0;
end
else
begin
if (Tpl_754)
begin
Tpl_786 <= 0;
Tpl_838 <= 3'b000;
Tpl_844 <= 2'b00;
Tpl_848 <= 1'b0;
Tpl_794 <= 1'b0;
end
else
if ((!Tpl_753))
begin
Tpl_832 <= Tpl_772;
Tpl_794 <= Tpl_793;
Tpl_786 <= Tpl_785;
Tpl_766 <= Tpl_765;
Tpl_826 <= Tpl_763;
Tpl_827 <= Tpl_764;
Tpl_820 <= Tpl_784;
Tpl_821 <= Tpl_782;
Tpl_822 <= Tpl_783;
Tpl_838 <= Tpl_787;
Tpl_830 <= Tpl_789;
Tpl_831 <= Tpl_791;
Tpl_833 <= Tpl_771;
Tpl_834 <= Tpl_770;
Tpl_835 <= Tpl_774;
Tpl_844 <= Tpl_777;
Tpl_845 <= Tpl_775;
Tpl_846 <= Tpl_781;
Tpl_843 <= Tpl_798;
Tpl_842 <= Tpl_797;
Tpl_848 <= Tpl_800;
Tpl_849 <= Tpl_801;
end
else
if (Tpl_753)
begin
Tpl_844 <= 2'b00;
end
end
end


always @(*)
begin
case (Tpl_831)
2'b00: begin
Tpl_760 = 2'b01;
end
2'b01: begin
Tpl_760 = 2'b10;
end
2'b10: begin
Tpl_760 = 2'b00;
end
default: begin
Tpl_760 = 2'b11;
end
endcase
end


always @(*)
begin
case (Tpl_831)
2'b01: begin
if ((Tpl_825[0] != 1'b0))
begin
Tpl_853 = 1'b1;
end
else
begin
Tpl_853 = 1'b0;
end
end
2'b10: begin
if ((Tpl_825[1:0] != 2'b00))
begin
Tpl_853 = 1'b1;
end
else
begin
Tpl_853 = 1'b0;
end
end
default: begin
Tpl_853 = 1'b0;
end
endcase
end


always @(*)
begin
if (((Tpl_841[1:0] != 2'b00) && Tpl_840))
begin
Tpl_854 = 1'b1;
end
else
begin
Tpl_854 = 1'b0;
end
end


always @(*)
begin
case (Tpl_838)
3'b001, 3'b011: begin
Tpl_841 = (Tpl_832 + Tpl_833);
end
3'b010: begin
Tpl_841 = (Tpl_836 + Tpl_833);
end
3'b100: begin
Tpl_841 = Tpl_847;
end
default: begin
Tpl_841 = 0;
end
endcase
end


always @(*)
begin
if (((Tpl_806 && (Tpl_807 == Tpl_826)) && (Tpl_807 != 0)))
begin
Tpl_836 = Tpl_808;
end
else
if (((Tpl_812 && (Tpl_813 == Tpl_826)) && (Tpl_813 != 0)))
begin
Tpl_836 = Tpl_814;
end
else
begin
Tpl_836 = Tpl_828;
end
end


always @(*)
begin
if (((Tpl_806 && (Tpl_807 == Tpl_827)) && (Tpl_807 != 0)))
begin
Tpl_837 = Tpl_808;
end
else
if (((Tpl_812 && (Tpl_813 == Tpl_827)) && (Tpl_813 != 0)))
begin
Tpl_837 = Tpl_814;
end
else
begin
Tpl_837 = Tpl_829;
end
end


always @(*)
begin
if (((((Tpl_810 != 2'b00) || (Tpl_816 != 2'b00)) || Tpl_811) || Tpl_817))
begin
Tpl_858 = 1'b1;
end
else
begin
Tpl_858 = 1'b0;
end
end


always @(*)
begin
if ((((Tpl_818 == 3'b010) || (Tpl_818 == 3'b011)) && ((((Tpl_821 == 3'b000) && (Tpl_807 == Tpl_826)) && (Tpl_826 != 0)) || (((Tpl_822 == 3'b000) && (Tpl_807 == Tpl_827)) && (Tpl_827 != 0)))))
begin
Tpl_857 = 1'b1;
end
else
begin
Tpl_857 = 1'b0;
end
end


assign Tpl_859 = Tpl_821;
assign Tpl_860 = Tpl_836;
assign Tpl_861 = Tpl_833;
assign Tpl_862 = Tpl_834;
assign Tpl_863 = Tpl_832;
assign Tpl_864 = Tpl_847;
assign Tpl_823 = Tpl_865;

assign Tpl_866 = Tpl_822;
assign Tpl_867 = Tpl_837;
assign Tpl_868 = Tpl_833;
assign Tpl_869 = Tpl_834;
assign Tpl_870 = Tpl_832;
assign Tpl_871 = Tpl_847;
assign Tpl_824 = Tpl_872;

assign Tpl_873 = Tpl_835;
assign Tpl_874 = Tpl_836;
assign Tpl_875 = Tpl_837;
assign Tpl_839 = Tpl_876;

assign Tpl_877 = Tpl_823;
assign Tpl_878 = Tpl_824;
assign Tpl_879 = Tpl_820;
assign Tpl_825 = Tpl_880;

assign Tpl_881 = Tpl_847;
assign Tpl_882 = Tpl_836;
assign Tpl_883 = Tpl_826;
assign Tpl_884 = Tpl_846;
assign Tpl_885 = Tpl_844;
assign Tpl_780 = Tpl_886;

always @(*)
begin
case (Tpl_859)
3'b000: Tpl_865 = Tpl_860;
3'b001: Tpl_865 = Tpl_861;
3'b010: Tpl_865 = {{({{(27){{1'b0}}}}),Tpl_862}};
3'b011: Tpl_865 = Tpl_863;
3'b100: Tpl_865 = (Tpl_863 + 4);
3'b111: Tpl_865 = Tpl_864;
3'b101: Tpl_865 = 0;
endcase
end


always @(*)
begin
case (Tpl_866)
3'b000: Tpl_872 = Tpl_867;
3'b001: Tpl_872 = Tpl_868;
3'b010: Tpl_872 = {{({{(27){{1'b0}}}}),Tpl_869}};
3'b011: Tpl_872 = Tpl_870;
3'b100: Tpl_872 = (Tpl_870 + 4);
3'b111: Tpl_872 = Tpl_871;
3'b101: Tpl_872 = 0;
endcase
end


always @(*)
begin
case (Tpl_873)
3'b000: begin
Tpl_876 = (Tpl_874 == Tpl_875);
end
3'b001: begin
Tpl_876 = (Tpl_874 != Tpl_875);
end
3'b100: begin
if ((Tpl_874[31] == Tpl_875[31]))
begin
Tpl_876 = (Tpl_874[30:0] < Tpl_875[30:0]);
end
else
begin
Tpl_876 = Tpl_874[31];
end
end
3'b101: begin
if ((Tpl_874[31] == Tpl_875[31]))
begin
Tpl_876 = (Tpl_875[30:0] <= Tpl_875[30:0]);
end
else
begin
Tpl_876 = Tpl_875[31];
end
end
3'b110: begin
Tpl_876 = (Tpl_874 < Tpl_875);
end
3'b111: begin
Tpl_876 = (Tpl_874 >= Tpl_875);
end
default: begin
Tpl_876 = 1'b0;
end
endcase
end


always @(*)
begin
case (Tpl_879)
4'b0000: begin
Tpl_880 = (Tpl_877 & Tpl_878);
end
4'b0001: begin
Tpl_880 = (Tpl_877 | Tpl_878);
end
4'b0010: begin
Tpl_880 = (Tpl_877 ^ Tpl_878);
end
4'b0011: begin
if (Tpl_877[(31 == Tpl_878[31])])
begin
Tpl_880 = ((Tpl_877 < Tpl_878) ? 1'b1 : 1'b0);
end
else
begin
Tpl_880 = Tpl_877[31];
end
end
4'b0100: begin
Tpl_880 = ((Tpl_877 < Tpl_878) ? 1'b1 : 1'b0);
end
4'b0101: begin
Tpl_880 = (Tpl_877 + Tpl_878);
end
4'b0110: begin
Tpl_880 = (Tpl_877 - Tpl_878);
end
4'b0111: begin
Tpl_880 = (Tpl_877 >> Tpl_878[4:0]);
end
4'b1000: begin
Tpl_880 = (Tpl_877 << Tpl_878[4:0]);
end
4'b1001: begin
end
default: begin
Tpl_880 = 0;
end
endcase
end

assign Tpl_887 = ((!Tpl_884) ? Tpl_882 : {{Tpl_883,27'b000000000000000000000000000}});

always @(*)
begin
case (Tpl_885)
2'b00: begin
Tpl_886 = Tpl_881;
end
2'b01: begin
Tpl_886 = (Tpl_881 | Tpl_887);
end
2'b10: begin
Tpl_886 = (Tpl_881 & (~Tpl_887));
end
2'b11: begin
Tpl_886 = Tpl_887;
end
endcase
end

assign Tpl_893 = ((!Tpl_906) ? Tpl_905 : Tpl_904);
assign Tpl_901 = Tpl_891;
assign Tpl_903 = ((Tpl_892 && (!Tpl_895)) && (!Tpl_906));
assign Tpl_902 = Tpl_904;
assign Tpl_894 = (Tpl_889 & (!Tpl_890));

always @( posedge Tpl_888 or negedge Tpl_889 )
begin
if ((~Tpl_889))
begin
Tpl_904 <= 0;
Tpl_906 <= 0;
end
else
begin
if (((Tpl_898 || Tpl_897) && (!Tpl_892)))
begin
Tpl_906 <= 1'b1;
Tpl_904 <= Tpl_905;
end
else
if ((Tpl_906 && Tpl_892))
begin
Tpl_906 <= 1'b0;
end
else
begin
Tpl_904 <= Tpl_905;
end
end
end


always @(*)
begin
if (Tpl_898)
begin
Tpl_905 = Tpl_900;
end
else
if (Tpl_897)
begin
Tpl_905 = Tpl_899;
end
else
if (((Tpl_892 & (!Tpl_895)) & (!Tpl_906)))
begin
Tpl_905 = (Tpl_904 + 4);
end
else
begin
Tpl_905 = Tpl_904;
end
end

assign Tpl_923 = Tpl_936;

always @( posedge Tpl_907 or negedge Tpl_908 )
begin
if ((~Tpl_908))
begin
Tpl_917 <= 0;
Tpl_933 <= 2'b00;
Tpl_925 <= 0;
Tpl_936 <= 3'b000;
end
else
begin
if ((!Tpl_909))
begin
Tpl_937 <= Tpl_922;
Tpl_938 <= Tpl_915;
Tpl_919 <= Tpl_916;
if (Tpl_926)
begin
Tpl_936 <= 3'b000;
Tpl_917 <= 1'b0;
Tpl_933 <= 2'b11;
Tpl_931 <= 833;
Tpl_935 <= Tpl_913;
Tpl_925 <= 1'b0;
end
else
begin
Tpl_936 <= Tpl_921;
Tpl_917 <= Tpl_914;
Tpl_933 <= Tpl_932;
Tpl_931 <= Tpl_930;
Tpl_935 <= Tpl_934;
Tpl_925 <= Tpl_924;
end
end
end
end


always @( posedge Tpl_907 or negedge Tpl_908 )
begin
if ((~Tpl_908))
begin
Tpl_928 <= 0;
end
else
begin
Tpl_928 <= (Tpl_926 || (Tpl_920 == 3'b100));
if (Tpl_926)
begin
Tpl_929 <= Tpl_927;
end
end
end


always @(*)
begin
if (((Tpl_936 == 3'b010) || (Tpl_936 == 3'b011)))
begin
case (Tpl_937)
2'b00: begin
if ((Tpl_936 == 3'b011))
begin
Tpl_918 = {{Tpl_912[7:0],24'b000000000000000000000000}};
end
else
begin
Tpl_918 = {{Tpl_912[7:0],24'b000000000000000000000000}};
end
end
2'b01: begin
if ((Tpl_936 == 3'b011))
begin
Tpl_918 = {{Tpl_912[15:0],16'b0000000000000000}};
end
else
begin
Tpl_918 = {{Tpl_912[15:0],16'b0000000000000000}};
end
end
2'b10: begin
Tpl_918 = Tpl_912;
end
endcase
end
else
begin
Tpl_918 = Tpl_938;
end
end


always @( posedge Tpl_939 or negedge Tpl_940 )
begin
if ((~Tpl_940))
begin
Tpl_948 <= 0;
end
else
begin
if ((Tpl_947 && (Tpl_945 != 0)))
begin
Tpl_948[Tpl_945] <= Tpl_946;
end
Tpl_949 <= Tpl_941;
Tpl_950 <= Tpl_943;
end
end

assign Tpl_942 = Tpl_948[Tpl_949];
assign Tpl_944 = Tpl_948[Tpl_950];

always @( posedge Tpl_951 or negedge Tpl_952 )
begin
if ((~Tpl_952))
begin
Tpl_968 <= 0;
Tpl_957 <= 0;
Tpl_954 <= 0;
end
else
begin
Tpl_954 <= Tpl_953;
Tpl_969 <= Tpl_966;
Tpl_968 <= Tpl_965;
Tpl_970 <= Tpl_967;
Tpl_957 <= Tpl_955;
Tpl_958 <= Tpl_956;
Tpl_962 <= Tpl_961;
Tpl_964 <= Tpl_963;
Tpl_960 <= Tpl_959;
end
end


always @( posedge Tpl_971 or negedge Tpl_972 )
begin
if ((~Tpl_972))
begin
Tpl_982 <= 0;
end
else
begin
Tpl_982 <= Tpl_973;
end
end

assign Tpl_983 = ((Tpl_982 ^ Tpl_973) & Tpl_973);

always @( posedge Tpl_971 or negedge Tpl_972 )
begin
if ((~Tpl_972))
begin
Tpl_981 <= 0;
Tpl_980 <= 0;
end
else
begin
if (Tpl_983)
begin
Tpl_981 <= 0;
Tpl_980 <= 0;
end
else
if (Tpl_975)
begin
Tpl_981 <= (Tpl_981 + 1);
Tpl_980[Tpl_981] <= Tpl_974;
end
end
end


always @( posedge Tpl_971 or negedge Tpl_972 )
begin
if ((~Tpl_972))
begin
Tpl_978 <= 0;
Tpl_979 <= 0;
end
else
begin
if (Tpl_977)
begin
if (((Tpl_976 >> 2) < Tpl_981))
begin
Tpl_978 <= 1'b1;
Tpl_979 <= Tpl_980[(Tpl_976 >> 2)];
end
else
begin
Tpl_978 <= 1'b0;
Tpl_979 <= 0;
end
end
else
begin
Tpl_978 <= 1'b0;
end
end
end


endmodule