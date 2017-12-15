.class Landroid/hardware/scontext/SContextVersion;
.super Ljava/lang/Object;
.source "SContextVersion.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SContextVersion"


# instance fields
.field private mAvailableServiceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mVersionMapWithSensorhub:[[I

.field private final mVersionMapWithoutSensorhub:[[I


# direct methods
.method constructor <init>(IZ)V
    .registers 11
    .param p1, "version"    # I
    .param p2, "isSensorhubEnabled"    # Z

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0xb

    const/4 v3, 0x3

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/scontext/SContextVersion;->mAvailableServiceMap:Ljava/util/HashMap;

    .line 40
    const/16 v0, 0x27

    new-array v0, v0, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_2be

    aput-object v1, v0, v5

    new-array v1, v4, [I

    fill-array-data v1, :array_2d8

    aput-object v1, v0, v6

    new-array v1, v4, [I

    fill-array-data v1, :array_2f2

    aput-object v1, v0, v7

    new-array v1, v4, [I

    fill-array-data v1, :array_30c

    aput-object v1, v0, v3

    const/4 v1, 0x4

    new-array v2, v4, [I

    fill-array-data v2, :array_326

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v4, [I

    fill-array-data v2, :array_340

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v4, [I

    fill-array-data v2, :array_35a

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v4, [I

    fill-array-data v2, :array_374

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v4, [I

    fill-array-data v2, :array_38e

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v4, [I

    fill-array-data v2, :array_3a8

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v4, [I

    fill-array-data v2, :array_3c2

    aput-object v2, v0, v1

    new-array v1, v4, [I

    fill-array-data v1, :array_3dc

    aput-object v1, v0, v4

    const/16 v1, 0xc

    new-array v2, v4, [I

    fill-array-data v2, :array_3f6

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v4, [I

    fill-array-data v2, :array_410

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v4, [I

    fill-array-data v2, :array_42a

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v4, [I

    fill-array-data v2, :array_444

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v4, [I

    fill-array-data v2, :array_45e

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v4, [I

    fill-array-data v2, :array_478

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v4, [I

    fill-array-data v2, :array_492

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v4, [I

    fill-array-data v2, :array_4ac

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v4, [I

    fill-array-data v2, :array_4c6

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v4, [I

    fill-array-data v2, :array_4e0

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v4, [I

    fill-array-data v2, :array_4fa

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v4, [I

    fill-array-data v2, :array_514

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v4, [I

    fill-array-data v2, :array_52e

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v4, [I

    fill-array-data v2, :array_548

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v4, [I

    fill-array-data v2, :array_562

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v4, [I

    fill-array-data v2, :array_57c

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v4, [I

    fill-array-data v2, :array_596

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v4, [I

    fill-array-data v2, :array_5b0

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v4, [I

    fill-array-data v2, :array_5ca

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v4, [I

    fill-array-data v2, :array_5e4

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v4, [I

    fill-array-data v2, :array_5fe

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v4, [I

    fill-array-data v2, :array_618

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v4, [I

    fill-array-data v2, :array_632

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v4, [I

    fill-array-data v2, :array_64c

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v4, [I

    fill-array-data v2, :array_666

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v4, [I

    fill-array-data v2, :array_680

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v4, [I

    fill-array-data v2, :array_69a

    aput-object v2, v0, v1

    iput-object v0, p0, Landroid/hardware/scontext/SContextVersion;->mVersionMapWithSensorhub:[[I

    .line 160
    const/16 v0, 0x27

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_6b4

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_6be

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_6c8

    aput-object v1, v0, v7

    new-array v1, v3, [I

    fill-array-data v1, :array_6d2

    aput-object v1, v0, v3

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_6dc

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_6e6

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_6f0

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_6fa

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_704

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_70e

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_718

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_722

    aput-object v1, v0, v4

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_72c

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_736

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    fill-array-data v2, :array_740

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    fill-array-data v2, :array_74a

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [I

    fill-array-data v2, :array_754

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [I

    fill-array-data v2, :array_75e

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [I

    fill-array-data v2, :array_768

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [I

    fill-array-data v2, :array_772

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [I

    fill-array-data v2, :array_77c

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [I

    fill-array-data v2, :array_786

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [I

    fill-array-data v2, :array_790

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v3, [I

    fill-array-data v2, :array_79a

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v3, [I

    fill-array-data v2, :array_7a4

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v3, [I

    fill-array-data v2, :array_7ae

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v3, [I

    fill-array-data v2, :array_7b8

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v3, [I

    fill-array-data v2, :array_7c2

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v3, [I

    fill-array-data v2, :array_7cc

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v3, [I

    fill-array-data v2, :array_7d6

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v3, [I

    fill-array-data v2, :array_7e0

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v3, [I

    fill-array-data v2, :array_7ea

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v3, [I

    fill-array-data v2, :array_7f4

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v3, [I

    fill-array-data v2, :array_7fe

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v3, [I

    fill-array-data v2, :array_808

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v3, [I

    fill-array-data v2, :array_812

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v3, [I

    fill-array-data v2, :array_81c

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v3, [I

    fill-array-data v2, :array_826

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v3, [I

    fill-array-data v2, :array_830

    aput-object v2, v0, v1

    iput-object v0, p0, Landroid/hardware/scontext/SContextVersion;->mVersionMapWithoutSensorhub:[[I

    .line 267
    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/SContextVersion;->initialize(IZ)V

    .line 268
    return-void

    .line 40
    :array_2be
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x0
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_2d8
    .array-data 4
        0x2
        0x0
        0x2
        0x2
        0x1
        0x2
        0x2
        0x3
        0x4
        0x3
        0x4
    .end array-data

    :array_2f2
    .array-data 4
        0x3
        0x1
        0x0
        0x1
        0x0
        0x1
        0x0
        0x0
        0x1
        0x0
        0x0
    .end array-data

    :array_30c
    .array-data 4
        0x4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_326
    .array-data 4
        0x5
        0x1
        0x1
        0x1
        0x1
        0x1
        0x2
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_340
    .array-data 4
        0x6
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_35a
    .array-data 4
        0x7
        0x0
        0x1
        0x2
        0x0
        0x2
        0x0
        0x3
        0x3
        0x0
        0x0
    .end array-data

    :array_374
    .array-data 4
        0x8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_38e
    .array-data 4
        0x9
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_3a8
    .array-data 4
        0xa
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_3c2
    .array-data 4
        0xb
        0x0
        0x1
        0x1
        0x1
        0x1
        0x0
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_3dc
    .array-data 4
        0xc
        0x0
        0x1
        0x1
        0x0
        0x0
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_3f6
    .array-data 4
        0xd
        0x0
        0x1
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_410
    .array-data 4
        0xe
        0x0
        0x1
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_42a
    .array-data 4
        0xf
        0x0
        0x1
        0x1
        0x1
        0x1
        0x0
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_444
    .array-data 4
        0x10
        0x0
        0x0
        0x1
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_45e
    .array-data 4
        0x11
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_478
    .array-data 4
        0x12
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_492
    .array-data 4
        0x13
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_4ac
    .array-data 4
        0x14
        0x0
        0x0
        0x1
        0x0
        0x1
        0x0
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_4c6
    .array-data 4
        0x15
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_4e0
    .array-data 4
        0x16
        0x0
        0x1
        0x1
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_4fa
    .array-data 4
        0x17
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_514
    .array-data 4
        0x18
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
        0x2
    .end array-data

    :array_52e
    .array-data 4
        0x19
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
        0x2
    .end array-data

    :array_548
    .array-data 4
        0x1a
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
        0x2
    .end array-data

    :array_562
    .array-data 4
        0x1b
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
        0x2
    .end array-data

    :array_57c
    .array-data 4
        0x1c
        0x0
        0x1
        0x1
        0x0
        0x0
        0x0
        0x1
        0x0
        0x1
        0x1
    .end array-data

    :array_596
    .array-data 4
        0x1d
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_5b0
    .array-data 4
        0x1e
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
        0x2
    .end array-data

    :array_5ca
    .array-data 4
        0x1f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_5e4
    .array-data 4
        0x20
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_5fe
    .array-data 4
        0x21
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x1
    .end array-data

    :array_618
    .array-data 4
        0x22
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x1
    .end array-data

    :array_632
    .array-data 4
        0x23
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x1
    .end array-data

    :array_64c
    .array-data 4
        0x24
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x1
    .end array-data

    :array_666
    .array-data 4
        0x25
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_680
    .array-data 4
        0x26
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_69a
    .array-data 4
        0x27
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
    .end array-data

    .line 160
    :array_6b4
    .array-data 4
        0x1
        0x0
        0x0
    .end array-data

    :array_6be
    .array-data 4
        0x2
        0x3
        0x3
    .end array-data

    :array_6c8
    .array-data 4
        0x3
        0x0
        0x0
    .end array-data

    :array_6d2
    .array-data 4
        0x4
        0x0
        0x0
    .end array-data

    :array_6dc
    .array-data 4
        0x5
        0x0
        0x0
    .end array-data

    :array_6e6
    .array-data 4
        0x6
        0x0
        0x0
    .end array-data

    :array_6f0
    .array-data 4
        0x7
        0x0
        0x0
    .end array-data

    :array_6fa
    .array-data 4
        0x8
        0x0
        0x0
    .end array-data

    :array_704
    .array-data 4
        0x9
        0x0
        0x0
    .end array-data

    :array_70e
    .array-data 4
        0xa
        0x0
        0x0
    .end array-data

    :array_718
    .array-data 4
        0xb
        0x0
        0x0
    .end array-data

    :array_722
    .array-data 4
        0xc
        0x0
        0x0
    .end array-data

    :array_72c
    .array-data 4
        0xd
        0x0
        0x0
    .end array-data

    :array_736
    .array-data 4
        0xe
        0x0
        0x0
    .end array-data

    :array_740
    .array-data 4
        0xf
        0x0
        0x0
    .end array-data

    :array_74a
    .array-data 4
        0x10
        0x0
        0x0
    .end array-data

    :array_754
    .array-data 4
        0x11
        0x0
        0x0
    .end array-data

    :array_75e
    .array-data 4
        0x12
        0x0
        0x0
    .end array-data

    :array_768
    .array-data 4
        0x13
        0x0
        0x0
    .end array-data

    :array_772
    .array-data 4
        0x14
        0x0
        0x0
    .end array-data

    :array_77c
    .array-data 4
        0x15
        0x0
        0x0
    .end array-data

    :array_786
    .array-data 4
        0x16
        0x0
        0x0
    .end array-data

    :array_790
    .array-data 4
        0x17
        0x0
        0x0
    .end array-data

    :array_79a
    .array-data 4
        0x18
        0x0
        0x0
    .end array-data

    :array_7a4
    .array-data 4
        0x19
        0x0
        0x0
    .end array-data

    :array_7ae
    .array-data 4
        0x1a
        0x0
        0x0
    .end array-data

    :array_7b8
    .array-data 4
        0x1b
        0x0
        0x0
    .end array-data

    :array_7c2
    .array-data 4
        0x1c
        0x0
        0x0
    .end array-data

    :array_7cc
    .array-data 4
        0x1d
        0x0
        0x0
    .end array-data

    :array_7d6
    .array-data 4
        0x1e
        0x0
        0x0
    .end array-data

    :array_7e0
    .array-data 4
        0x1f
        0x0
        0x0
    .end array-data

    :array_7ea
    .array-data 4
        0x20
        0x0
        0x0
    .end array-data

    :array_7f4
    .array-data 4
        0x21
        0x0
        0x0
    .end array-data

    :array_7fe
    .array-data 4
        0x22
        0x0
        0x0
    .end array-data

    :array_808
    .array-data 4
        0x23
        0x0
        0x0
    .end array-data

    :array_812
    .array-data 4
        0x24
        0x0
        0x0
    .end array-data

    :array_81c
    .array-data 4
        0x25
        0x0
        0x0
    .end array-data

    :array_826
    .array-data 4
        0x26
        0x0
        0x0
    .end array-data

    :array_830
    .array-data 4
        0x27
        0x0
        0x0
    .end array-data
.end method

.method private initialize(IZ)V
    .registers 9
    .param p1, "version"    # I
    .param p2, "isSensorhubEnabled"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .prologue
    .line 287
    const/4 v2, 0x0

    check-cast v2, [[I

    .line 288
    .local v2, "versionMap":[[I
    if-eqz p2, :cond_2b

    .line 289
    iget-object v2, p0, Landroid/hardware/scontext/SContextVersion;->mVersionMapWithSensorhub:[[I

    .line 293
    :goto_7
    array-length v1, v2

    .line 295
    .local v1, "size":I
    if-lez p1, :cond_c

    if-le p1, v1, :cond_2e

    .line 296
    :cond_c
    const-string v3, "SContextVersion"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initialize() : this version ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") is not supported!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :goto_2a
    return-void

    .line 291
    .end local v1    # "size":I
    :cond_2b
    iget-object v2, p0, Landroid/hardware/scontext/SContextVersion;->mVersionMapWithoutSensorhub:[[I

    goto :goto_7

    .line 300
    .restart local v1    # "size":I
    :cond_2e
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroid/hardware/scontext/SContextVersion;->mAvailableServiceMap:Ljava/util/HashMap;

    .line 302
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_36
    if-ge v0, v1, :cond_57

    .line 303
    aget-object v3, v2, v0

    aget v3, v3, p1

    if-lez v3, :cond_54

    .line 304
    iget-object v3, p0, Landroid/hardware/scontext/SContextVersion;->mAvailableServiceMap:Ljava/util/HashMap;

    aget-object v4, v2, v0

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aget-object v5, v2, v0

    aget v5, v5, p1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    :cond_54
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    .line 307
    :cond_57
    const-string v3, "SContextVersion"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initialize() : this version = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a
.end method


# virtual methods
.method getAvailableServiceMap()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 276
    iget-object v0, p0, Landroid/hardware/scontext/SContextVersion;->mAvailableServiceMap:Ljava/util/HashMap;

    return-object v0
.end method
