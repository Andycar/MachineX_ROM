.class Lcom/android/systemui/statusbar/policy/WifiIcons;
.super Ljava/lang/Object;
.source "WifiIcons.java"


# static fields
.field static final NWBOOSTER_WIFI_SIGNAL_STRENGTH:[[I

.field static final QS_WIFI_SIGNAL_STRENGTH:[[I

.field static final WIFI_LEVEL_COUNT:I

.field static final WIFI_SIGNAL_STRENGTH:[[I

.field static final WIFI_SIGNAL_STRENGTH_HIDEINANDOUT:[[I

.field static final WIFI_SIGNAL_STRENGTH_KT:[[I

.field static final WIFI_SIGNAL_STRENGTH_LGT:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x5

    .line 22
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    .line 35
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    .line 48
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    aget-object v0, v0, v3

    array-length v0, v0

    sput v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    .line 51
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->NWBOOSTER_WIFI_SIGNAL_STRENGTH:[[I

    .line 65
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_HIDEINANDOUT:[[I

    .line 78
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_9

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_LGT:[[I

    .line 93
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_a

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_KT:[[I

    return-void

    .line 22
    :array_0
    .array-data 4
        0x7f02050a
        0x7f02050d
        0x7f020510
        0x7f020513
        0x7f020516
    .end array-data

    :array_1
    .array-data 4
        0x7f02050b
        0x7f02050e
        0x7f020511
        0x7f020514
        0x7f020517
    .end array-data

    .line 35
    :array_2
    .array-data 4
        0x7f02013e
        0x7f02013f
        0x7f020140
        0x7f020141
        0x7f020142
    .end array-data

    :array_3
    .array-data 4
        0x7f020145
        0x7f020146
        0x7f020147
        0x7f020148
        0x7f020149
    .end array-data

    .line 51
    :array_4
    .array-data 4
        0x7f020505
        0x7f020506
        0x7f020507
        0x7f020508
        0x7f020509
    .end array-data

    :array_5
    .array-data 4
        0x7f020505
        0x7f020506
        0x7f020507
        0x7f020508
        0x7f020509
    .end array-data

    .line 65
    :array_6
    .array-data 4
        0x7f02050c
        0x7f02050f
        0x7f020512
        0x7f020515
        0x7f020518
    .end array-data

    :array_7
    .array-data 4
        0x7f02050c
        0x7f02050f
        0x7f020512
        0x7f020515
        0x7f020518
    .end array-data

    .line 78
    :array_8
    .array-data 4
        0x7f0204fa
        0x7f0204fb
        0x7f0204fc
        0x7f0204fd
        0x7f0204fe
    .end array-data

    :array_9
    .array-data 4
        0x7f0204fa
        0x7f0204fb
        0x7f0204fc
        0x7f0204fd
        0x7f0204fe
    .end array-data

    .line 93
    :array_a
    .array-data 4
        0x7f020378
        0x7f020379
        0x7f02037a
        0x7f02037b
        0x7f02037c
    .end array-data

    :array_b
    .array-data 4
        0x7f020378
        0x7f020379
        0x7f02037a
        0x7f02037b
        0x7f02037c
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
