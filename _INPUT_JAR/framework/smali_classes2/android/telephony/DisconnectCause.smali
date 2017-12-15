.class public Landroid/telephony/DisconnectCause;
.super Ljava/lang/Object;
.source "DisconnectCause.java"


# static fields
.field public static final ACCESS_DISCARD:I = 0xdc

.field public static final ACM_EXCEED:I = 0xe6

.field public static final BARRED_IN_CUG:I = 0xe1

.field public static final BARRER_NOT_ALLOWED:I = 0xe2

.field public static final BEARER_CAPABILITY_NOT_AUTHORIZED:I = 0xc8

.field public static final BEARER_UNINPLEMENTED:I = 0xe5

.field public static final BUSY:I = 0x4

.field public static final CALL_BARRED:I = 0x14

.field public static final CALL_REJECT:I = 0xcf

.field public static final CDMA_ACCESS_BLOCKED:I = 0x23

.field public static final CDMA_ACCESS_FAILURE:I = 0x20

.field public static final CDMA_CALL_LOST:I = 0x29

.field public static final CDMA_DROP:I = 0x1b

.field public static final CDMA_INTERCEPT:I = 0x1c

.field public static final CDMA_LOCKED_UNTIL_POWER_CYCLE:I = 0x1a

.field public static final CDMA_NOT_EMERGENCY:I = 0x22

.field public static final CDMA_PREEMPTED:I = 0x21

.field public static final CDMA_REORDER:I = 0x1d

.field public static final CDMA_RETRY_ORDER:I = 0x1f

.field public static final CDMA_SO_REJECT:I = 0x1e

.field public static final CHANNEL_UNACCEPT:I = 0xcc

.field public static final CONGESTION:I = 0x5

.field public static final CS_RESTRICTED:I = 0x16

.field public static final CS_RESTRICTED_EMERGENCY:I = 0x18

.field public static final CS_RESTRICTED_NORMAL:I = 0x17

.field public static final DESTINATION_OUT_OF:I = 0xd3

.field public static final DIALED_MMI:I = 0x27

.field public static final EMERGENCY_ONLY:I = 0x25

.field public static final ERROR_UNSPECIFIED:I = 0x24

.field public static final EXITED_ECM:I = 0x2a

.field public static final FACILITY_REJECT:I = 0xd5

.field public static final FACILITY_UNINPLEMENTED:I = 0xe7

.field public static final FDN_BLOCKED:I = 0x15

.field public static final ICC_ERROR:I = 0x13

.field public static final IE_ERROR:I = 0xef

.field public static final IE_NON_EXIST:I = 0xf2

.field public static final IMS_ERROR:I = 0x65

.field public static final INCOMING_MISSED:I = 0x1

.field public static final INCOMING_REJECTED:I = 0x10

.field public static final INCOMPATIBLE_DEST:I = 0xec

.field public static final INCORRECT_MSG:I = 0xee

.field public static final INTERWORKING:I = 0xf7

.field public static final INVALID_CREDENTIALS:I = 0xa

.field public static final INVALID_IE_CONTENTS:I = 0xf3

.field public static final INVALID_NUMBER:I = 0x7

.field public static final INVALID_NUM_FORMAT:I = 0xd4

.field public static final INVALID_TI:I = 0xea

.field public static final INVALID_TRANSIT_NET:I = 0xed

.field public static final LIMIT_EXCEEDED:I = 0xf

.field public static final LOCAL:I = 0x3

.field public static final LOST_SIGNAL:I = 0xe

.field public static final MAXIMUM_VALID_VALUE:I = 0xf7

.field public static final MINIMUM_VALID_VALUE:I = 0x0

.field public static final MMI:I = 0x6

.field public static final MSG_NOT_COMP:I = 0xf1

.field public static final MSG_NOT_COMP_CALL_STATE:I = 0xf4

.field public static final MSG_TYPE_NON_EXIST:I = 0xf0

.field public static final NET_OUT_OF:I = 0xd9

.field public static final NON_SELECTED:I = 0xd2

.field public static final NORMAL:I = 0x2

.field public static final NORMAL_UNSPECIFIED:I = 0xd7

.field public static final NOT_DISCONNECTED:I = 0x0

.field public static final NOT_IN_CUG:I = 0xeb

.field public static final NOT_VALID:I = -0x1

.field public static final NO_ANSWER:I = 0x64

.field public static final NO_BEARER:I = 0xe3

.field public static final NO_CHANNEL:I = 0xdd

.field public static final NO_CIRCUIT:I = 0xd8

.field public static final NO_PHONE_NUMBER_SUPPLIED:I = 0x26

.field public static final NO_QOS:I = 0xdf

.field public static final NO_RESOURCE:I = 0xde

.field public static final NO_ROUTE:I = 0xcb

.field public static final NO_SUBSCRIBED:I = 0xe0

.field public static final NO_USER_RESP:I = 0xce

.field public static final NUMBER_CHANGED:I = 0xd0

.field public static final NUMBER_UNREACHABLE:I = 0x8

.field public static final OP_DETERMINED:I = 0xcd

.field public static final OUTGOING_CANCELED:I = 0x2c

.field public static final OUTGOING_FAILURE:I = 0x2b

.field public static final OUT_OF_NETWORK:I = 0xb

.field public static final OUT_OF_SERVICE:I = 0x12

.field public static final POWER_OFF:I = 0x11

.field public static final PRE_EMPTION:I = 0xd1

.field public static final PROTOCOL_ERROR:I = 0xf6

.field public static final RECOVERY_TIMER_EXPIRY:I = 0xf5

.field public static final REQUESTED_FACILITY_NOT_IMPLEMENTED:I = 0xc9

.field public static final RESTRICTED_DIGITAL:I = 0xe8

.field public static final SERVER_ERROR:I = 0xc

.field public static final SERVER_UNREACHABLE:I = 0x9

.field public static final SERVICE_UNAVAILABLE:I = 0xe4

.field public static final SERVICE_UNINPLEMENTED:I = 0xe9

.field public static final STATUS_ENQUIRY:I = 0xd6

.field public static final SWITCH_CONGESTION:I = 0xdb

.field public static final TIMED_OUT:I = 0xd

.field public static final TMP_FAIL:I = 0xda

.field public static final UAVAILABLE_CHANNEL:I = 0x66

.field public static final UNASSIGNED_NUM:I = 0xca

.field public static final UNOBTAINABLE_NUMBER:I = 0x19

.field public static final VOICEMAIL_NUMBER_MISSING:I = 0x28

.field public static final WIFI_OUT_OF_FOOTPRINT:I = 0x67


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    return-void
.end method

.method public static disconnectCauseId(Ljava/lang/String;)I
    .registers 2
    .param p0, "cause"    # Ljava/lang/String;

    .prologue
    .line 448
    const-string v0, "NOT_DISCONNECTED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 449
    const/4 v0, 0x0

    .line 649
    :goto_9
    return v0

    .line 450
    :cond_a
    const-string v0, "INCOMING_MISSED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 451
    const/4 v0, 0x1

    goto :goto_9

    .line 452
    :cond_14
    const-string v0, "NORMAL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 453
    const/4 v0, 0x2

    goto :goto_9

    .line 454
    :cond_1e
    const-string v0, "LOCAL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 455
    const/4 v0, 0x3

    goto :goto_9

    .line 456
    :cond_28
    const-string v0, "BUSY"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 457
    const/4 v0, 0x4

    goto :goto_9

    .line 458
    :cond_32
    const-string v0, "CONGESTION"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 459
    const/4 v0, 0x5

    goto :goto_9

    .line 460
    :cond_3c
    const-string v0, "INVALID_NUMBER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 461
    const/4 v0, 0x7

    goto :goto_9

    .line 462
    :cond_46
    const-string v0, "NUMBER_UNREACHABLE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 463
    const/16 v0, 0x8

    goto :goto_9

    .line 464
    :cond_51
    const-string v0, "SERVER_UNREACHABLE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 465
    const/16 v0, 0x9

    goto :goto_9

    .line 466
    :cond_5c
    const-string v0, "INVALID_CREDENTIALS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 467
    const/16 v0, 0xa

    goto :goto_9

    .line 468
    :cond_67
    const-string v0, "OUT_OF_NETWORK"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 469
    const/16 v0, 0xb

    goto :goto_9

    .line 470
    :cond_72
    const-string v0, "SERVER_ERROR"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 471
    const/16 v0, 0xc

    goto :goto_9

    .line 472
    :cond_7d
    const-string v0, "TIMED_OUT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 473
    const/16 v0, 0xd

    goto :goto_9

    .line 474
    :cond_88
    const-string v0, "LOST_SIGNAL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 475
    const/16 v0, 0xe

    goto/16 :goto_9

    .line 476
    :cond_94
    const-string v0, "LIMIT_EXCEEDED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 477
    const/16 v0, 0xf

    goto/16 :goto_9

    .line 478
    :cond_a0
    const-string v0, "INCOMING_REJECTED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 479
    const/16 v0, 0x10

    goto/16 :goto_9

    .line 480
    :cond_ac
    const-string v0, "POWER_OFF"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 481
    const/16 v0, 0x11

    goto/16 :goto_9

    .line 482
    :cond_b8
    const-string v0, "OUT_OF_SERVICE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 483
    const/16 v0, 0x12

    goto/16 :goto_9

    .line 484
    :cond_c4
    const-string v0, "ICC_ERROR"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 485
    const/16 v0, 0x13

    goto/16 :goto_9

    .line 486
    :cond_d0
    const-string v0, "CALL_BARRED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 487
    const/16 v0, 0x14

    goto/16 :goto_9

    .line 488
    :cond_dc
    const-string v0, "FDN_BLOCKED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e8

    .line 489
    const/16 v0, 0x15

    goto/16 :goto_9

    .line 490
    :cond_e8
    const-string v0, "CS_RESTRICTED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f4

    .line 491
    const/16 v0, 0x16

    goto/16 :goto_9

    .line 492
    :cond_f4
    const-string v0, "CS_RESTRICTED_NORMAL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_100

    .line 493
    const/16 v0, 0x17

    goto/16 :goto_9

    .line 494
    :cond_100
    const-string v0, "CS_RESTRICTED_EMERGENCY"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10c

    .line 495
    const/16 v0, 0x18

    goto/16 :goto_9

    .line 496
    :cond_10c
    const-string v0, "UNOBTAINABLE_NUMBER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_118

    .line 497
    const/16 v0, 0x19

    goto/16 :goto_9

    .line 498
    :cond_118
    const-string v0, "CDMA_LOCKED_UNTIL_POWER_CYCLE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_124

    .line 499
    const/16 v0, 0x1a

    goto/16 :goto_9

    .line 500
    :cond_124
    const-string v0, "CDMA_DROP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_130

    .line 501
    const/16 v0, 0x1b

    goto/16 :goto_9

    .line 502
    :cond_130
    const-string v0, "CDMA_INTERCEPT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13c

    .line 503
    const/16 v0, 0x1c

    goto/16 :goto_9

    .line 504
    :cond_13c
    const-string v0, "CDMA_REORDER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_148

    .line 505
    const/16 v0, 0x1d

    goto/16 :goto_9

    .line 506
    :cond_148
    const-string v0, "CDMA_SO_REJECT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_154

    .line 507
    const/16 v0, 0x1e

    goto/16 :goto_9

    .line 508
    :cond_154
    const-string v0, "CDMA_RETRY_ORDER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_160

    .line 509
    const/16 v0, 0x1f

    goto/16 :goto_9

    .line 510
    :cond_160
    const-string v0, "CDMA_ACCESS_FAILURE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16c

    .line 511
    const/16 v0, 0x20

    goto/16 :goto_9

    .line 512
    :cond_16c
    const-string v0, "CDMA_PREEMPTED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_178

    .line 513
    const/16 v0, 0x21

    goto/16 :goto_9

    .line 514
    :cond_178
    const-string v0, "CDMA_NOT_EMERGENCY"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_184

    .line 515
    const/16 v0, 0x22

    goto/16 :goto_9

    .line 516
    :cond_184
    const-string v0, "CDMA_ACCESS_BLOCKED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_190

    .line 517
    const/16 v0, 0x23

    goto/16 :goto_9

    .line 518
    :cond_190
    const-string v0, "EMERGENCY_ONLY"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19c

    .line 519
    const/16 v0, 0x25

    goto/16 :goto_9

    .line 520
    :cond_19c
    const-string v0, "NO_PHONE_NUMBER_SUPPLIED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a8

    .line 521
    const/16 v0, 0x26

    goto/16 :goto_9

    .line 522
    :cond_1a8
    const-string v0, "DIALED_MMI"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b4

    .line 523
    const/16 v0, 0x27

    goto/16 :goto_9

    .line 524
    :cond_1b4
    const-string v0, "VOICEMAIL_NUMBER_MISSING"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c0

    .line 525
    const/16 v0, 0x28

    goto/16 :goto_9

    .line 526
    :cond_1c0
    const-string v0, "CDMA_CALL_LOST"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1cc

    .line 527
    const/16 v0, 0x29

    goto/16 :goto_9

    .line 528
    :cond_1cc
    const-string v0, "EXITED_ECM"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d8

    .line 529
    const/16 v0, 0x2a

    goto/16 :goto_9

    .line 530
    :cond_1d8
    const-string v0, "ERROR_UNSPECIFIED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e4

    .line 531
    const/16 v0, 0x24

    goto/16 :goto_9

    .line 532
    :cond_1e4
    const-string v0, "OUTGOING_FAILURE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f0

    .line 533
    const/16 v0, 0x2b

    goto/16 :goto_9

    .line 534
    :cond_1f0
    const-string v0, "OUTGOING_CANCELED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1fc

    .line 535
    const/16 v0, 0x2c

    goto/16 :goto_9

    .line 537
    :cond_1fc
    const-string v0, "NO_ANSWER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_208

    .line 538
    const/16 v0, 0x64

    goto/16 :goto_9

    .line 539
    :cond_208
    const-string v0, "IMS_ERROR"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_214

    .line 540
    const/16 v0, 0x65

    goto/16 :goto_9

    .line 541
    :cond_214
    const-string v0, "UAVAILABLE_CHANNEL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_220

    .line 542
    const/16 v0, 0x66

    goto/16 :goto_9

    .line 545
    :cond_220
    const-string v0, "WIFI_OUT_OF_FOOTPRINT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22c

    .line 546
    const/16 v0, 0x67

    goto/16 :goto_9

    .line 549
    :cond_22c
    const-string v0, "BEARER_CAPABILITY_NOT_AUTHORIZED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_238

    .line 550
    const/16 v0, 0xc8

    goto/16 :goto_9

    .line 551
    :cond_238
    const-string v0, "REQUESTED_FACILITY_NOT_IMPLEMENTED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_244

    .line 552
    const/16 v0, 0xc9

    goto/16 :goto_9

    .line 555
    :cond_244
    const-string v0, "NO_USER_RESP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_250

    .line 556
    const/16 v0, 0xce

    goto/16 :goto_9

    .line 557
    :cond_250
    const-string v0, "NO_CIRCUIT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25c

    .line 558
    const/16 v0, 0xd8

    goto/16 :goto_9

    .line 559
    :cond_25c
    const-string v0, "TMP_FAIL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_268

    .line 560
    const/16 v0, 0xda

    goto/16 :goto_9

    .line 561
    :cond_268
    const-string v0, "SWITCH_CONGESTION"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_274

    .line 562
    const/16 v0, 0xdb

    goto/16 :goto_9

    .line 563
    :cond_274
    const-string v0, "NO_CHANNEL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_280

    .line 564
    const/16 v0, 0xdd

    goto/16 :goto_9

    .line 565
    :cond_280
    const-string v0, "NO_QOS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28c

    .line 566
    const/16 v0, 0xdf

    goto/16 :goto_9

    .line 567
    :cond_28c
    const-string v0, "NO_BEARER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_298

    .line 568
    const/16 v0, 0xe3

    goto/16 :goto_9

    .line 569
    :cond_298
    const-string v0, "ACM_EXCEED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a4

    .line 570
    const/16 v0, 0xe6

    goto/16 :goto_9

    .line 571
    :cond_2a4
    const-string v0, "UNASSIGNED_NUM"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b0

    .line 572
    const/16 v0, 0xca

    goto/16 :goto_9

    .line 573
    :cond_2b0
    const-string v0, "NO_ROUTE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2bc

    .line 574
    const/16 v0, 0xcb

    goto/16 :goto_9

    .line 575
    :cond_2bc
    const-string v0, "CHANNEL_UNACCEPT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c8

    .line 576
    const/16 v0, 0xcc

    goto/16 :goto_9

    .line 577
    :cond_2c8
    const-string v0, "OP_DETERMINED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d4

    .line 578
    const/16 v0, 0xcd

    goto/16 :goto_9

    .line 579
    :cond_2d4
    const-string v0, "CALL_REJECT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e0

    .line 580
    const/16 v0, 0xcf

    goto/16 :goto_9

    .line 581
    :cond_2e0
    const-string v0, "PRE_EMPTION"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2ec

    .line 582
    const/16 v0, 0xd1

    goto/16 :goto_9

    .line 583
    :cond_2ec
    const-string v0, "NON_SELECTED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f8

    .line 584
    const/16 v0, 0xd2

    goto/16 :goto_9

    .line 585
    :cond_2f8
    const-string v0, "DESTINATION_OUT_OF"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_304

    .line 586
    const/16 v0, 0xd3

    goto/16 :goto_9

    .line 587
    :cond_304
    const-string v0, "INVALID_NUM_FORMAT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_310

    .line 588
    const/16 v0, 0xd4

    goto/16 :goto_9

    .line 589
    :cond_310
    const-string v0, "FACILITY_REJECT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31c

    .line 590
    const/16 v0, 0xd5

    goto/16 :goto_9

    .line 591
    :cond_31c
    const-string v0, "NET_OUT_OF"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_328

    .line 592
    const/16 v0, 0xd9

    goto/16 :goto_9

    .line 593
    :cond_328
    const-string v0, "ACCESS_DISCARD"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_334

    .line 594
    const/16 v0, 0xdc

    goto/16 :goto_9

    .line 595
    :cond_334
    const-string v0, "NO_RESOURCE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_340

    .line 596
    const/16 v0, 0xde

    goto/16 :goto_9

    .line 597
    :cond_340
    const-string v0, "NO_SUBSCRIBED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34c

    .line 598
    const/16 v0, 0xe0

    goto/16 :goto_9

    .line 599
    :cond_34c
    const-string v0, "BARRED_IN_CUG"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_358

    .line 600
    const/16 v0, 0xe1

    goto/16 :goto_9

    .line 601
    :cond_358
    const-string v0, "BARRER_NOT_ALLOWED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_364

    .line 602
    const/16 v0, 0xe2

    goto/16 :goto_9

    .line 603
    :cond_364
    const-string v0, "SERVICE_UNAVAILABLE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_370

    .line 604
    const/16 v0, 0xe4

    goto/16 :goto_9

    .line 605
    :cond_370
    const-string v0, "BEARER_UNINPLEMENTED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37c

    .line 606
    const/16 v0, 0xe5

    goto/16 :goto_9

    .line 607
    :cond_37c
    const-string v0, "FACILITY_UNINPLEMENTED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_388

    .line 608
    const/16 v0, 0xe7

    goto/16 :goto_9

    .line 609
    :cond_388
    const-string v0, "RESTRICTED_DIGITAL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_394

    .line 610
    const/16 v0, 0xe8

    goto/16 :goto_9

    .line 611
    :cond_394
    const-string v0, "SERVICE_UNINPLEMENTED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a0

    .line 612
    const/16 v0, 0xe9

    goto/16 :goto_9

    .line 613
    :cond_3a0
    const-string v0, "INVALID_TI"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3ac

    .line 614
    const/16 v0, 0xea

    goto/16 :goto_9

    .line 615
    :cond_3ac
    const-string v0, "NOT_IN_CUG"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b8

    .line 616
    const/16 v0, 0xeb

    goto/16 :goto_9

    .line 617
    :cond_3b8
    const-string v0, "INCOMPATIBLE_DEST"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c4

    .line 618
    const/16 v0, 0xec

    goto/16 :goto_9

    .line 619
    :cond_3c4
    const-string v0, "INVALID_TRANSIT_NET"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d0

    .line 620
    const/16 v0, 0xed

    goto/16 :goto_9

    .line 621
    :cond_3d0
    const-string v0, "INCORRECT_MSG"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3dc

    .line 622
    const/16 v0, 0xee

    goto/16 :goto_9

    .line 623
    :cond_3dc
    const-string v0, "IE_ERROR"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e8

    .line 624
    const/16 v0, 0xef

    goto/16 :goto_9

    .line 625
    :cond_3e8
    const-string v0, "MSG_TYPE_NON_EXIST"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f4

    .line 626
    const/16 v0, 0xf0

    goto/16 :goto_9

    .line 627
    :cond_3f4
    const-string v0, "MSG_NOT_COMP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_400

    .line 628
    const/16 v0, 0xf1

    goto/16 :goto_9

    .line 629
    :cond_400
    const-string v0, "IE_NON_EXIST"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40c

    .line 630
    const/16 v0, 0xf2

    goto/16 :goto_9

    .line 631
    :cond_40c
    const-string v0, "INVALID_IE_CONTENTS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_418

    .line 632
    const/16 v0, 0xf3

    goto/16 :goto_9

    .line 633
    :cond_418
    const-string v0, "MSG_NOT_COMP_CALL_STATE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_424

    .line 634
    const/16 v0, 0xf4

    goto/16 :goto_9

    .line 635
    :cond_424
    const-string v0, "RECOVERY_TIMER_EXPIRY"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_430

    .line 636
    const/16 v0, 0xf5

    goto/16 :goto_9

    .line 637
    :cond_430
    const-string v0, "PROTOCOL_ERROR"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43c

    .line 638
    const/16 v0, 0xf6

    goto/16 :goto_9

    .line 639
    :cond_43c
    const-string v0, "INTERWORKING"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_448

    .line 640
    const/16 v0, 0xf7

    goto/16 :goto_9

    .line 641
    :cond_448
    const-string v0, "NUMBER_CHANGED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_454

    .line 642
    const/16 v0, 0xd0

    goto/16 :goto_9

    .line 643
    :cond_454
    const-string v0, "STATUS_ENQUIRY"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_460

    .line 644
    const/16 v0, 0xd6

    goto/16 :goto_9

    .line 645
    :cond_460
    const-string v0, "NORMAL_UNSPECIFIED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46c

    .line 646
    const/16 v0, 0xd7

    goto/16 :goto_9

    .line 649
    :cond_46c
    const/4 v0, -0x1

    goto/16 :goto_9
.end method

.method public static toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "cause"    # I

    .prologue
    .line 240
    sparse-switch p0, :sswitch_data_16e

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INVALID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_16
    return-object v0

    .line 242
    :sswitch_17
    const-string v0, "NOT_DISCONNECTED"

    goto :goto_16

    .line 244
    :sswitch_1a
    const-string v0, "INCOMING_MISSED"

    goto :goto_16

    .line 246
    :sswitch_1d
    const-string v0, "NORMAL"

    goto :goto_16

    .line 248
    :sswitch_20
    const-string v0, "LOCAL"

    goto :goto_16

    .line 250
    :sswitch_23
    const-string v0, "BUSY"

    goto :goto_16

    .line 252
    :sswitch_26
    const-string v0, "CONGESTION"

    goto :goto_16

    .line 254
    :sswitch_29
    const-string v0, "INVALID_NUMBER"

    goto :goto_16

    .line 256
    :sswitch_2c
    const-string v0, "NUMBER_UNREACHABLE"

    goto :goto_16

    .line 258
    :sswitch_2f
    const-string v0, "SERVER_UNREACHABLE"

    goto :goto_16

    .line 260
    :sswitch_32
    const-string v0, "INVALID_CREDENTIALS"

    goto :goto_16

    .line 262
    :sswitch_35
    const-string v0, "OUT_OF_NETWORK"

    goto :goto_16

    .line 264
    :sswitch_38
    const-string v0, "SERVER_ERROR"

    goto :goto_16

    .line 266
    :sswitch_3b
    const-string v0, "TIMED_OUT"

    goto :goto_16

    .line 268
    :sswitch_3e
    const-string v0, "LOST_SIGNAL"

    goto :goto_16

    .line 270
    :sswitch_41
    const-string v0, "LIMIT_EXCEEDED"

    goto :goto_16

    .line 272
    :sswitch_44
    const-string v0, "INCOMING_REJECTED"

    goto :goto_16

    .line 274
    :sswitch_47
    const-string v0, "POWER_OFF"

    goto :goto_16

    .line 276
    :sswitch_4a
    const-string v0, "OUT_OF_SERVICE"

    goto :goto_16

    .line 278
    :sswitch_4d
    const-string v0, "ICC_ERROR"

    goto :goto_16

    .line 280
    :sswitch_50
    const-string v0, "CALL_BARRED"

    goto :goto_16

    .line 282
    :sswitch_53
    const-string v0, "FDN_BLOCKED"

    goto :goto_16

    .line 284
    :sswitch_56
    const-string v0, "CS_RESTRICTED"

    goto :goto_16

    .line 286
    :sswitch_59
    const-string v0, "CS_RESTRICTED_NORMAL"

    goto :goto_16

    .line 288
    :sswitch_5c
    const-string v0, "CS_RESTRICTED_EMERGENCY"

    goto :goto_16

    .line 290
    :sswitch_5f
    const-string v0, "UNOBTAINABLE_NUMBER"

    goto :goto_16

    .line 292
    :sswitch_62
    const-string v0, "CDMA_LOCKED_UNTIL_POWER_CYCLE"

    goto :goto_16

    .line 294
    :sswitch_65
    const-string v0, "CDMA_DROP"

    goto :goto_16

    .line 296
    :sswitch_68
    const-string v0, "CDMA_INTERCEPT"

    goto :goto_16

    .line 298
    :sswitch_6b
    const-string v0, "CDMA_REORDER"

    goto :goto_16

    .line 300
    :sswitch_6e
    const-string v0, "CDMA_SO_REJECT"

    goto :goto_16

    .line 302
    :sswitch_71
    const-string v0, "CDMA_RETRY_ORDER"

    goto :goto_16

    .line 304
    :sswitch_74
    const-string v0, "CDMA_ACCESS_FAILURE"

    goto :goto_16

    .line 306
    :sswitch_77
    const-string v0, "CDMA_PREEMPTED"

    goto :goto_16

    .line 308
    :sswitch_7a
    const-string v0, "CDMA_NOT_EMERGENCY"

    goto :goto_16

    .line 310
    :sswitch_7d
    const-string v0, "CDMA_ACCESS_BLOCKED"

    goto :goto_16

    .line 312
    :sswitch_80
    const-string v0, "EMERGENCY_ONLY"

    goto :goto_16

    .line 314
    :sswitch_83
    const-string v0, "NO_PHONE_NUMBER_SUPPLIED"

    goto :goto_16

    .line 316
    :sswitch_86
    const-string v0, "DIALED_MMI"

    goto :goto_16

    .line 318
    :sswitch_89
    const-string v0, "VOICEMAIL_NUMBER_MISSING"

    goto :goto_16

    .line 320
    :sswitch_8c
    const-string v0, "CDMA_CALL_LOST"

    goto :goto_16

    .line 322
    :sswitch_8f
    const-string v0, "EXITED_ECM"

    goto :goto_16

    .line 324
    :sswitch_92
    const-string v0, "ERROR_UNSPECIFIED"

    goto :goto_16

    .line 326
    :sswitch_95
    const-string v0, "OUTGOING_FAILURE"

    goto/16 :goto_16

    .line 328
    :sswitch_99
    const-string v0, "OUTGOING_CANCELED"

    goto/16 :goto_16

    .line 331
    :sswitch_9d
    const-string v0, "NO_ANSWER"

    goto/16 :goto_16

    .line 333
    :sswitch_a1
    const-string v0, "IMS_ERROR"

    goto/16 :goto_16

    .line 335
    :sswitch_a5
    const-string v0, "UAVAILABLE_CHANNEL"

    goto/16 :goto_16

    .line 339
    :sswitch_a9
    const-string v0, "WIFI_OUT_OF_FOOTPRINT"

    goto/16 :goto_16

    .line 343
    :sswitch_ad
    const-string v0, "BEARER_CAPABILITY_NOT_AUTHORIZED"

    goto/16 :goto_16

    .line 345
    :sswitch_b1
    const-string v0, "REQUESTED_FACILITY_NOT_IMPLEMENTED"

    goto/16 :goto_16

    .line 349
    :sswitch_b5
    const-string v0, "NO_USER_RESP"

    goto/16 :goto_16

    .line 351
    :sswitch_b9
    const-string v0, "NO_CIRCUIT"

    goto/16 :goto_16

    .line 353
    :sswitch_bd
    const-string v0, "TMP_FAIL"

    goto/16 :goto_16

    .line 355
    :sswitch_c1
    const-string v0, "SWITCH_CONGESTION"

    goto/16 :goto_16

    .line 357
    :sswitch_c5
    const-string v0, "NO_CHANNEL"

    goto/16 :goto_16

    .line 359
    :sswitch_c9
    const-string v0, "NO_QOS"

    goto/16 :goto_16

    .line 361
    :sswitch_cd
    const-string v0, "NO_BEARER"

    goto/16 :goto_16

    .line 363
    :sswitch_d1
    const-string v0, "ACM_EXCEED"

    goto/16 :goto_16

    .line 365
    :sswitch_d5
    const-string v0, "UNASSIGNED_NUM"

    goto/16 :goto_16

    .line 367
    :sswitch_d9
    const-string v0, "NO_ROUTE"

    goto/16 :goto_16

    .line 369
    :sswitch_dd
    const-string v0, "CHANNEL_UNACCEPT"

    goto/16 :goto_16

    .line 371
    :sswitch_e1
    const-string v0, "OP_DETERMINED"

    goto/16 :goto_16

    .line 373
    :sswitch_e5
    const-string v0, "CALL_REJECT"

    goto/16 :goto_16

    .line 375
    :sswitch_e9
    const-string v0, "PRE_EMPTION"

    goto/16 :goto_16

    .line 377
    :sswitch_ed
    const-string v0, "NON_SELECTED"

    goto/16 :goto_16

    .line 379
    :sswitch_f1
    const-string v0, "DESTINATION_OUT_OF"

    goto/16 :goto_16

    .line 381
    :sswitch_f5
    const-string v0, "INVALID_NUM_FORMAT"

    goto/16 :goto_16

    .line 383
    :sswitch_f9
    const-string v0, "FACILITY_REJECT"

    goto/16 :goto_16

    .line 385
    :sswitch_fd
    const-string v0, "NET_OUT_OF"

    goto/16 :goto_16

    .line 387
    :sswitch_101
    const-string v0, "ACCESS_DISCARD"

    goto/16 :goto_16

    .line 389
    :sswitch_105
    const-string v0, "NO_RESOURCE"

    goto/16 :goto_16

    .line 391
    :sswitch_109
    const-string v0, "NO_SUBSCRIBED"

    goto/16 :goto_16

    .line 393
    :sswitch_10d
    const-string v0, "BARRED_IN_CUG"

    goto/16 :goto_16

    .line 395
    :sswitch_111
    const-string v0, "BARRER_NOT_ALLOWED"

    goto/16 :goto_16

    .line 397
    :sswitch_115
    const-string v0, "SERVICE_UNAVAILABLE"

    goto/16 :goto_16

    .line 399
    :sswitch_119
    const-string v0, "BEARER_UNINPLEMENTED"

    goto/16 :goto_16

    .line 401
    :sswitch_11d
    const-string v0, "FACILITY_UNINPLEMENTED"

    goto/16 :goto_16

    .line 403
    :sswitch_121
    const-string v0, "RESTRICTED_DIGITAL"

    goto/16 :goto_16

    .line 405
    :sswitch_125
    const-string v0, "SERVICE_UNINPLEMENTED"

    goto/16 :goto_16

    .line 407
    :sswitch_129
    const-string v0, "INVALID_TI"

    goto/16 :goto_16

    .line 409
    :sswitch_12d
    const-string v0, "NOT_IN_CUG"

    goto/16 :goto_16

    .line 411
    :sswitch_131
    const-string v0, "INCOMPATIBLE_DEST"

    goto/16 :goto_16

    .line 413
    :sswitch_135
    const-string v0, "INVALID_TRANSIT_NET"

    goto/16 :goto_16

    .line 415
    :sswitch_139
    const-string v0, "INCORRECT_MSG"

    goto/16 :goto_16

    .line 417
    :sswitch_13d
    const-string v0, "IE_ERROR"

    goto/16 :goto_16

    .line 419
    :sswitch_141
    const-string v0, "MSG_TYPE_NON_EXIST"

    goto/16 :goto_16

    .line 421
    :sswitch_145
    const-string v0, "MSG_NOT_COMP"

    goto/16 :goto_16

    .line 423
    :sswitch_149
    const-string v0, "IE_NON_EXIST"

    goto/16 :goto_16

    .line 425
    :sswitch_14d
    const-string v0, "INVALID_IE_CONTENTS"

    goto/16 :goto_16

    .line 427
    :sswitch_151
    const-string v0, "MSG_NOT_COMP_CALL_STATE"

    goto/16 :goto_16

    .line 429
    :sswitch_155
    const-string v0, "RECOVERY_TIMER_EXPIRY"

    goto/16 :goto_16

    .line 431
    :sswitch_159
    const-string v0, "PROTOCOL_ERROR"

    goto/16 :goto_16

    .line 433
    :sswitch_15d
    const-string v0, "INTERWORKING"

    goto/16 :goto_16

    .line 435
    :sswitch_161
    const-string v0, "NUMBER_CHANGED"

    goto/16 :goto_16

    .line 437
    :sswitch_165
    const-string v0, "STATUS_ENQUIRY"

    goto/16 :goto_16

    .line 439
    :sswitch_169
    const-string v0, "NORMAL_UNSPECIFIED"

    goto/16 :goto_16

    .line 240
    nop

    :sswitch_data_16e
    .sparse-switch
        0x0 -> :sswitch_17
        0x1 -> :sswitch_1a
        0x2 -> :sswitch_1d
        0x3 -> :sswitch_20
        0x4 -> :sswitch_23
        0x5 -> :sswitch_26
        0x7 -> :sswitch_29
        0x8 -> :sswitch_2c
        0x9 -> :sswitch_2f
        0xa -> :sswitch_32
        0xb -> :sswitch_35
        0xc -> :sswitch_38
        0xd -> :sswitch_3b
        0xe -> :sswitch_3e
        0xf -> :sswitch_41
        0x10 -> :sswitch_44
        0x11 -> :sswitch_47
        0x12 -> :sswitch_4a
        0x13 -> :sswitch_4d
        0x14 -> :sswitch_50
        0x15 -> :sswitch_53
        0x16 -> :sswitch_56
        0x17 -> :sswitch_59
        0x18 -> :sswitch_5c
        0x19 -> :sswitch_5f
        0x1a -> :sswitch_62
        0x1b -> :sswitch_65
        0x1c -> :sswitch_68
        0x1d -> :sswitch_6b
        0x1e -> :sswitch_6e
        0x1f -> :sswitch_71
        0x20 -> :sswitch_74
        0x21 -> :sswitch_77
        0x22 -> :sswitch_7a
        0x23 -> :sswitch_7d
        0x24 -> :sswitch_92
        0x25 -> :sswitch_80
        0x26 -> :sswitch_83
        0x27 -> :sswitch_86
        0x28 -> :sswitch_89
        0x29 -> :sswitch_8c
        0x2a -> :sswitch_8f
        0x2b -> :sswitch_95
        0x2c -> :sswitch_99
        0x64 -> :sswitch_9d
        0x65 -> :sswitch_a1
        0x66 -> :sswitch_a5
        0x67 -> :sswitch_a9
        0xc8 -> :sswitch_ad
        0xc9 -> :sswitch_b1
        0xca -> :sswitch_d5
        0xcb -> :sswitch_d9
        0xcc -> :sswitch_dd
        0xcd -> :sswitch_e1
        0xce -> :sswitch_b5
        0xcf -> :sswitch_e5
        0xd0 -> :sswitch_161
        0xd1 -> :sswitch_e9
        0xd2 -> :sswitch_ed
        0xd3 -> :sswitch_f1
        0xd4 -> :sswitch_f5
        0xd5 -> :sswitch_f9
        0xd6 -> :sswitch_165
        0xd7 -> :sswitch_169
        0xd8 -> :sswitch_b9
        0xd9 -> :sswitch_fd
        0xda -> :sswitch_bd
        0xdb -> :sswitch_c1
        0xdc -> :sswitch_101
        0xdd -> :sswitch_c5
        0xde -> :sswitch_105
        0xdf -> :sswitch_c9
        0xe0 -> :sswitch_109
        0xe1 -> :sswitch_10d
        0xe2 -> :sswitch_111
        0xe3 -> :sswitch_cd
        0xe4 -> :sswitch_115
        0xe5 -> :sswitch_119
        0xe6 -> :sswitch_d1
        0xe7 -> :sswitch_11d
        0xe8 -> :sswitch_121
        0xe9 -> :sswitch_125
        0xea -> :sswitch_129
        0xeb -> :sswitch_12d
        0xec -> :sswitch_131
        0xed -> :sswitch_135
        0xee -> :sswitch_139
        0xef -> :sswitch_13d
        0xf0 -> :sswitch_141
        0xf1 -> :sswitch_145
        0xf2 -> :sswitch_149
        0xf3 -> :sswitch_14d
        0xf4 -> :sswitch_151
        0xf5 -> :sswitch_155
        0xf6 -> :sswitch_159
        0xf7 -> :sswitch_15d
    .end sparse-switch
.end method
