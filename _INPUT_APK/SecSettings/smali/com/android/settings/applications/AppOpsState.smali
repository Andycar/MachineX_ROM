.class public Lcom/android/settings/applications/AppOpsState;
.super Ljava/lang/Object;
.source "AppOpsState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/AppOpsState$AppOpEntry;,
        Lcom/android/settings/applications/AppOpsState$AppEntry;,
        Lcom/android/settings/applications/AppOpsState$OpsTemplate;
    }
.end annotation


# static fields
.field public static final ALL_TEMPLATES:[Lcom/android/settings/applications/AppOpsState$OpsTemplate;

.field public static final APP_OP_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/applications/AppOpsState$AppOpEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final BOOTUP_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

.field public static final DEVICE_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

.field public static final LOCATION_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

.field public static final MEDIA_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

.field public static final MESSAGING_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

.field public static final PERSONAL_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;


# instance fields
.field final mAppOps:Landroid/app/AppOpsManager;

.field final mContext:Landroid/content/Context;

.field final mOpLabels:[Ljava/lang/CharSequence;

.field final mOpSummaries:[Ljava/lang/CharSequence;

.field final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/4 v2, 0x7

    const/4 v5, 0x0

    const/16 v4, 0x8

    const/4 v3, 0x1

    .line 110
    new-instance v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    new-array v2, v2, [Z

    fill-array-data v2, :array_1

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applications/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/settings/applications/AppOpsState;->LOCATION_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    .line 127
    new-instance v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    new-array v1, v4, [I

    fill-array-data v1, :array_2

    new-array v2, v4, [Z

    fill-array-data v2, :array_3

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applications/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/settings/applications/AppOpsState;->PERSONAL_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    .line 146
    new-instance v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    new-array v1, v6, [I

    fill-array-data v1, :array_4

    new-array v2, v6, [Z

    fill-array-data v2, :array_5

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applications/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/settings/applications/AppOpsState;->MESSAGING_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    .line 169
    new-instance v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    const/16 v1, 0xe

    new-array v1, v1, [I

    fill-array-data v1, :array_6

    const/16 v2, 0xe

    new-array v2, v2, [Z

    fill-array-data v2, :array_7

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applications/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/settings/applications/AppOpsState;->MEDIA_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    .line 200
    new-instance v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    new-array v1, v4, [I

    fill-array-data v1, :array_8

    new-array v2, v4, [Z

    fill-array-data v2, :array_9

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applications/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/settings/applications/AppOpsState;->DEVICE_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    .line 220
    new-instance v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    new-array v1, v3, [I

    const/16 v2, 0x35

    aput v2, v1, v5

    new-array v2, v3, [Z

    aput-boolean v3, v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applications/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/settings/applications/AppOpsState;->BOOTUP_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    .line 225
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    sget-object v1, Lcom/android/settings/applications/AppOpsState;->LOCATION_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings/applications/AppOpsState;->PERSONAL_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    aput-object v1, v0, v3

    const/4 v1, 0x2

    sget-object v2, Lcom/android/settings/applications/AppOpsState;->MESSAGING_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/android/settings/applications/AppOpsState;->MEDIA_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/android/settings/applications/AppOpsState;->DEVICE_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/android/settings/applications/AppOpsState;->BOOTUP_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/applications/AppOpsState;->ALL_TEMPLATES:[Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    .line 439
    new-instance v0, Lcom/android/settings/applications/AppOpsState$1;

    invoke-direct {v0}, Lcom/android/settings/applications/AppOpsState$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AppOpsState;->APP_OP_COMPARATOR:Ljava/util/Comparator;

    return-void

    .line 110
    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0xa
        0xc
        0x29
        0x2a
    .end array-data

    :array_1
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 127
    :array_2
    .array-data 4
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x1d
        0x1e
    .end array-data

    :array_3
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    .line 146
    :array_4
    .array-data 4
        0xe
        0x10
        0x11
        0x12
        0x13
        0xf
        0x14
        0x32
        0x15
        0x16
    .end array-data

    :array_5
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    .line 169
    nop

    :array_6
    .array-data 4
        0x3
        0x1a
        0x1b
        0x1c
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x2c
    .end array-data

    :array_7
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 200
    nop

    :array_8
    .array-data 4
        0xb
        0x19
        0xd
        0x17
        0x18
        0x28
        0x2e
        0x2f
    .end array-data

    :array_9
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/android/settings/applications/AppOpsState;->mContext:Landroid/content/Context;

    .line 68
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsState;->mAppOps:Landroid/app/AppOpsManager;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsState;->mPm:Landroid/content/pm/PackageManager;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0074

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsState;->mOpSummaries:[Ljava/lang/CharSequence;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0075

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsState;->mOpLabels:[Ljava/lang/CharSequence;

    .line 72
    return-void
.end method

.method private addOp(Ljava/util/List;Landroid/app/AppOpsManager$PackageOps;Lcom/android/settings/applications/AppOpsState$AppEntry;Landroid/app/AppOpsManager$OpEntry;ZI)V
    .locals 8
    .param p2, "pkgOps"    # Landroid/app/AppOpsManager$PackageOps;
    .param p3, "appEntry"    # Lcom/android/settings/applications/AppOpsState$AppEntry;
    .param p4, "opEntry"    # Landroid/app/AppOpsManager$OpEntry;
    .param p5, "allowMerge"    # Z
    .param p6, "switchOrder"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/applications/AppOpsState$AppOpEntry;",
            ">;",
            "Landroid/app/AppOpsManager$PackageOps;",
            "Lcom/android/settings/applications/AppOpsState$AppEntry;",
            "Landroid/app/AppOpsManager$OpEntry;",
            "ZI)V"
        }
    .end annotation

    .prologue
    .line 461
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/applications/AppOpsState$AppOpEntry;>;"
    if-eqz p5, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 462
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/AppOpsState$AppOpEntry;

    .line 463
    .local v2, "last":Lcom/android/settings/applications/AppOpsState$AppOpEntry;
    invoke-virtual {v2}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getAppEntry()Lcom/android/settings/applications/AppOpsState$AppEntry;

    move-result-object v4

    if-ne v4, p3, :cond_2

    .line 464
    invoke-virtual {v2}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 465
    .local v3, "lastExe":Z
    :goto_0
    invoke-virtual {p4}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    .line 466
    .local v1, "entryExe":Z
    :goto_1
    if-ne v3, v1, :cond_2

    .line 469
    invoke-virtual {v2, p4}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->addOp(Landroid/app/AppOpsManager$OpEntry;)V

    .line 483
    .end local v1    # "entryExe":Z
    .end local v2    # "last":Lcom/android/settings/applications/AppOpsState$AppOpEntry;
    .end local v3    # "lastExe":Z
    :goto_2
    return-void

    .line 464
    .restart local v2    # "last":Lcom/android/settings/applications/AppOpsState$AppOpEntry;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 465
    .restart local v3    # "lastExe":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 474
    .end local v2    # "last":Lcom/android/settings/applications/AppOpsState$AppOpEntry;
    .end local v3    # "lastExe":Z
    :cond_2
    invoke-virtual {p4}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v4

    invoke-virtual {p3, v4}, Lcom/android/settings/applications/AppOpsState$AppEntry;->getOpSwitch(I)Lcom/android/settings/applications/AppOpsState$AppOpEntry;

    move-result-object v0

    .line 475
    .local v0, "entry":Lcom/android/settings/applications/AppOpsState$AppOpEntry;
    if-eqz v0, :cond_3

    .line 476
    invoke-virtual {v0, p4}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->addOp(Landroid/app/AppOpsManager$OpEntry;)V

    goto :goto_2

    .line 479
    :cond_3
    new-instance v0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;

    .end local v0    # "entry":Lcom/android/settings/applications/AppOpsState$AppOpEntry;
    invoke-direct {v0, p2, p4, p3, p6}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;-><init>(Landroid/app/AppOpsManager$PackageOps;Landroid/app/AppOpsManager$OpEntry;Lcom/android/settings/applications/AppOpsState$AppEntry;I)V

    .line 482
    .restart local v0    # "entry":Lcom/android/settings/applications/AppOpsState$AppOpEntry;
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private getAppEntry(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/applications/AppOpsState$AppEntry;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/applications/AppOpsState$AppEntry;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            ")",
            "Lcom/android/settings/applications/AppOpsState$AppEntry;"
        }
    .end annotation

    .prologue
    .line 491
    .local p2, "appEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/applications/AppOpsState$AppEntry;>;"
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/AppOpsState$AppEntry;

    .line 492
    .local v0, "appEntry":Lcom/android/settings/applications/AppOpsState$AppEntry;
    if-nez v0, :cond_1

    .line 493
    if-nez p4, :cond_0

    .line 495
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/applications/AppOpsState;->mPm:Landroid/content/pm/PackageManager;

    const/16 v3, 0x2200

    invoke-virtual {v2, p3, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p4

    .line 503
    :cond_0
    new-instance v0, Lcom/android/settings/applications/AppOpsState$AppEntry;

    .end local v0    # "appEntry":Lcom/android/settings/applications/AppOpsState$AppEntry;
    invoke-direct {v0, p0, p4}, Lcom/android/settings/applications/AppOpsState$AppEntry;-><init>(Lcom/android/settings/applications/AppOpsState;Landroid/content/pm/ApplicationInfo;)V

    .line 504
    .restart local v0    # "appEntry":Lcom/android/settings/applications/AppOpsState$AppEntry;
    invoke-virtual {v0, p1}, Lcom/android/settings/applications/AppOpsState$AppEntry;->loadLabel(Landroid/content/Context;)V

    .line 505
    invoke-virtual {p2, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v2, v0

    .line 507
    :goto_0
    return-object v2

    .line 498
    :catch_0
    move-exception v1

    .line 499
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "AppOpsState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find info for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public buildState(Lcom/android/settings/applications/AppOpsState$OpsTemplate;)Ljava/util/List;
    .locals 2
    .param p1, "tpl"    # Lcom/android/settings/applications/AppOpsState$OpsTemplate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/applications/AppOpsState$OpsTemplate;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/applications/AppOpsState$AppOpEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 486
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/applications/AppOpsState;->buildState(Lcom/android/settings/applications/AppOpsState$OpsTemplate;ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public buildState(Lcom/android/settings/applications/AppOpsState$OpsTemplate;ILjava/lang/String;)Ljava/util/List;
    .locals 38
    .param p1, "tpl"    # Lcom/android/settings/applications/AppOpsState$OpsTemplate;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/applications/AppOpsState$OpsTemplate;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/applications/AppOpsState$AppOpEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppOpsState;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    .line 513
    .local v21, "context":Landroid/content/Context;
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 514
    .local v16, "appEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/applications/AppOpsState$AppEntry;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 516
    .local v4, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/applications/AppOpsState$AppOpEntry;>;"
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 517
    .local v34, "perms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 518
    .local v33, "permOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v3, 0x3c

    new-array v0, v3, [I

    move-object/from16 v31, v0

    .line 519
    .local v31, "opToOrder":[I
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_0
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->ops:[I

    array-length v3, v3

    move/from16 v0, v25

    if-ge v0, v3, :cond_2

    .line 520
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->showPerms:[Z

    aget-boolean v3, v3, v25

    if-eqz v3, :cond_1

    .line 521
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->ops:[I

    aget v3, v3, v25

    invoke-static {v3}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v32

    .line 522
    .local v32, "perm":Ljava/lang/String;
    if-eqz v32, :cond_1

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isChinaNAL()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->ops:[I

    aget v3, v3, v25

    const/16 v8, 0x32

    if-ne v3, v8, :cond_1

    .line 524
    :cond_0
    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->ops:[I

    aget v3, v3, v25

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->ops:[I

    aget v3, v3, v25

    aput v25, v31, v3

    .line 519
    .end local v32    # "perm":Ljava/lang/String;
    :cond_1
    add-int/lit8 v25, v25, 0x1

    goto :goto_0

    .line 532
    :cond_2
    if-eqz p3, :cond_4

    .line 533
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/AppOpsState;->mAppOps:Landroid/app/AppOpsManager;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->ops:[I

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v3, v0, v1, v8}, Landroid/app/AppOpsManager;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object v37

    .line 538
    .local v37, "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_1
    if-eqz v37, :cond_e

    .line 539
    const/16 v25, 0x0

    :goto_2
    invoke-interface/range {v37 .. v37}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v25

    if-ge v0, v3, :cond_e

    .line 540
    move-object/from16 v0, v37

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$PackageOps;

    .line 541
    .local v5, "pkgOps":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/android/settings/applications/AppOpsState;->getAppEntry(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/applications/AppOpsState$AppEntry;

    move-result-object v6

    .line 542
    .local v6, "appEntry":Lcom/android/settings/applications/AppOpsState$AppEntry;
    if-nez v6, :cond_5

    .line 539
    :cond_3
    add-int/lit8 v25, v25, 0x1

    goto :goto_2

    .line 535
    .end local v5    # "pkgOps":Landroid/app/AppOpsManager$PackageOps;
    .end local v6    # "appEntry":Lcom/android/settings/applications/AppOpsState$AppEntry;
    .end local v37    # "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/AppOpsState;->mAppOps:Landroid/app/AppOpsManager;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->ops:[I

    invoke-virtual {v3, v8}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v37

    .restart local v37    # "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_1

    .line 554
    .restart local v5    # "pkgOps":Landroid/app/AppOpsManager$PackageOps;
    .restart local v6    # "appEntry":Lcom/android/settings/applications/AppOpsState$AppEntry;
    :cond_5
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 555
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v8, "CscFeature_Setting_ConfigForbidAppDisableButton"

    invoke-virtual {v3, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 556
    const/16 v27, 0x0

    .line 557
    .local v27, "isSkip":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/AppOpsState;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v8, 0x7f0c00c5

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    .line 558
    .local v18, "appString":[Ljava/lang/String;
    move-object/from16 v20, v18

    .local v20, "arr$":[Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v30, v0

    .local v30, "len$":I
    const/16 v26, 0x0

    .local v26, "i$":I
    :goto_3
    move/from16 v0, v26

    move/from16 v1, v30

    if-ge v0, v1, :cond_6

    aget-object v15, v20, v26

    .line 559
    .local v15, "app":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 560
    const/16 v27, 0x1

    .line 564
    .end local v15    # "app":Ljava/lang/String;
    :cond_6
    if-nez v27, :cond_3

    .line 568
    .end local v18    # "appString":[Ljava/lang/String;
    .end local v20    # "arr$":[Ljava/lang/String;
    .end local v26    # "i$":I
    .end local v27    # "isSkip":Z
    .end local v30    # "len$":I
    :cond_7
    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isDCMRequestOpsPackage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 574
    :cond_8
    invoke-static {}, Lcom/android/settings/Utils;->isChinaNAL()Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->ops:[I

    array-length v3, v3

    const/4 v8, 0x1

    if-ne v3, v8, :cond_a

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->ops:[I

    const/4 v8, 0x0

    aget v3, v3, v8

    sget-object v8, Lcom/android/settings/applications/AppOpsState;->BOOTUP_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    iget-object v8, v8, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->ops:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    if-ne v3, v8, :cond_a

    .line 576
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/AppOpsState;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1000

    invoke-virtual {v3, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v36

    .line 577
    .local v36, "pi":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v36

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v24, v0

    .line 578
    .local v24, "flag":I
    move/from16 v0, v24

    and-int/lit16 v3, v0, 0x80

    if-nez v3, :cond_9

    and-int/lit8 v3, v24, 0x1

    if-eqz v3, :cond_9

    const-string v3, "com.wsdm"

    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/AppOpsState;->mPm:Landroid/content/pm/PackageManager;

    const-string v8, "android.permission.RECEIVE_BOOT_COMPLETED"

    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_3

    .line 590
    .end local v24    # "flag":I
    .end local v36    # "pi":Landroid/content/pm/PackageInfo;
    :cond_a
    :goto_4
    const/16 v28, 0x0

    .local v28, "j":I
    :goto_5
    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v28

    if-ge v0, v3, :cond_3

    .line 591
    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v3

    move/from16 v0, v28

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AppOpsManager$OpEntry;

    .line 592
    .local v7, "opEntry":Landroid/app/AppOpsManager$OpEntry;
    if-nez p3, :cond_c

    const/4 v8, 0x1

    :goto_6
    if-nez p3, :cond_d

    const/4 v9, 0x0

    :goto_7
    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/settings/applications/AppOpsState;->addOp(Ljava/util/List;Landroid/app/AppOpsManager$PackageOps;Lcom/android/settings/applications/AppOpsState$AppEntry;Landroid/app/AppOpsManager$OpEntry;ZI)V

    .line 590
    add-int/lit8 v28, v28, 0x1

    goto :goto_5

    .line 558
    .end local v7    # "opEntry":Landroid/app/AppOpsManager$OpEntry;
    .end local v28    # "j":I
    .restart local v15    # "app":Ljava/lang/String;
    .restart local v18    # "appString":[Ljava/lang/String;
    .restart local v20    # "arr$":[Ljava/lang/String;
    .restart local v26    # "i$":I
    .restart local v27    # "isSkip":Z
    .restart local v30    # "len$":I
    :cond_b
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_3

    .line 585
    .end local v15    # "app":Ljava/lang/String;
    .end local v18    # "appString":[Ljava/lang/String;
    .end local v20    # "arr$":[Ljava/lang/String;
    .end local v26    # "i$":I
    .end local v27    # "isSkip":Z
    .end local v30    # "len$":I
    :catch_0
    move-exception v23

    .line 586
    .local v23, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual/range {v23 .. v23}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_4

    .line 592
    .end local v23    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v7    # "opEntry":Landroid/app/AppOpsManager$OpEntry;
    .restart local v28    # "j":I
    :cond_c
    const/4 v8, 0x0

    goto :goto_6

    :cond_d
    invoke-virtual {v7}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v3

    aget v9, v31, v3

    goto :goto_7

    .line 599
    .end local v5    # "pkgOps":Landroid/app/AppOpsManager$PackageOps;
    .end local v6    # "appEntry":Lcom/android/settings/applications/AppOpsState$AppEntry;
    .end local v7    # "opEntry":Landroid/app/AppOpsManager$OpEntry;
    .end local v28    # "j":I
    :cond_e
    if-eqz p3, :cond_10

    .line 600
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 602
    .local v19, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/AppOpsState;->mPm:Landroid/content/pm/PackageManager;

    const/16 v8, 0x1000

    move-object/from16 v0, p3

    invoke-virtual {v3, v0, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v36

    .line 603
    .restart local v36    # "pi":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v19

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 611
    .end local v36    # "pi":Landroid/content/pm/PackageInfo;
    :goto_8
    const/16 v25, 0x0

    :goto_9
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v25

    if-ge v0, v3, :cond_1f

    .line 612
    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/PackageInfo;

    .line 613
    .local v17, "appInfo":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v17

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/android/settings/applications/AppOpsState;->getAppEntry(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/applications/AppOpsState$AppEntry;

    move-result-object v6

    .line 615
    .restart local v6    # "appEntry":Lcom/android/settings/applications/AppOpsState$AppEntry;
    if-nez v6, :cond_11

    .line 611
    :cond_f
    add-int/lit8 v25, v25, 0x1

    goto :goto_9

    .line 607
    .end local v6    # "appEntry":Lcom/android/settings/applications/AppOpsState$AppEntry;
    .end local v17    # "appInfo":Landroid/content/pm/PackageInfo;
    .end local v19    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_10
    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v35, v0

    .line 608
    .local v35, "permsArray":[Ljava/lang/String;
    invoke-virtual/range {v34 .. v35}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 609
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/AppOpsState;->mPm:Landroid/content/pm/PackageManager;

    const/4 v8, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v3, v0, v8}, Landroid/content/pm/PackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v19

    .restart local v19    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    goto :goto_8

    .line 626
    .end local v35    # "permsArray":[Ljava/lang/String;
    .restart local v6    # "appEntry":Lcom/android/settings/applications/AppOpsState$AppEntry;
    .restart local v17    # "appInfo":Landroid/content/pm/PackageInfo;
    :cond_11
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 627
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v8, "CscFeature_Setting_ConfigForbidAppDisableButton"

    invoke-virtual {v3, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 628
    const/16 v27, 0x0

    .line 629
    .restart local v27    # "isSkip":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/AppOpsState;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v8, 0x7f0c00c5

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    .line 630
    .restart local v18    # "appString":[Ljava/lang/String;
    move-object/from16 v20, v18

    .restart local v20    # "arr$":[Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v30, v0

    .restart local v30    # "len$":I
    const/16 v26, 0x0

    .restart local v26    # "i$":I
    :goto_a
    move/from16 v0, v26

    move/from16 v1, v30

    if-ge v0, v1, :cond_12

    aget-object v15, v20, v26

    .line 631
    .restart local v15    # "app":Ljava/lang/String;
    move-object/from16 v0, v17

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 632
    const/16 v27, 0x1

    .line 636
    .end local v15    # "app":Ljava/lang/String;
    :cond_12
    if-nez v27, :cond_f

    .line 640
    .end local v18    # "appString":[Ljava/lang/String;
    .end local v20    # "arr$":[Ljava/lang/String;
    .end local v26    # "i$":I
    .end local v27    # "isSkip":Z
    .end local v30    # "len$":I
    :cond_13
    move-object/from16 v0, v17

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settings/Utils;->isDCMRequestOpsPackage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 648
    :cond_14
    invoke-static {}, Lcom/android/settings/Utils;->isChinaNAL()Z

    move-result v3

    if-eqz v3, :cond_16

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->ops:[I

    array-length v3, v3

    const/4 v8, 0x1

    if-ne v3, v8, :cond_16

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->ops:[I

    const/4 v8, 0x0

    aget v3, v3, v8

    sget-object v8, Lcom/android/settings/applications/AppOpsState;->BOOTUP_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    iget-object v8, v8, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->ops:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    if-ne v3, v8, :cond_16

    .line 649
    move-object/from16 v0, v17

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v24, v0

    .line 650
    .restart local v24    # "flag":I
    move/from16 v0, v24

    and-int/lit16 v3, v0, 0x80

    if-nez v3, :cond_15

    and-int/lit8 v3, v24, 0x1

    if-eqz v3, :cond_15

    const-string v3, "com.wsdm"

    move-object/from16 v0, v17

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/AppOpsState;->mPm:Landroid/content/pm/PackageManager;

    const-string v8, "android.permission.RECEIVE_BOOT_COMPLETED"

    move-object/from16 v0, v17

    iget-object v9, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_f

    .line 659
    .end local v24    # "flag":I
    :cond_16
    const/16 v22, 0x0

    .line 660
    .local v22, "dummyOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v5, 0x0

    .line 661
    .restart local v5    # "pkgOps":Landroid/app/AppOpsManager$PackageOps;
    move-object/from16 v0, v17

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v3, :cond_f

    .line 662
    const/16 v28, 0x0

    .restart local v28    # "j":I
    :goto_b
    move-object/from16 v0, v17

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v3, v3

    move/from16 v0, v28

    if-ge v0, v3, :cond_f

    .line 663
    move-object/from16 v0, v17

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    if-eqz v3, :cond_19

    .line 664
    move-object/from16 v0, v17

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v3, v3, v28

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_19

    .line 662
    :cond_17
    add-int/lit8 v28, v28, 0x1

    goto :goto_b

    .line 630
    .end local v5    # "pkgOps":Landroid/app/AppOpsManager$PackageOps;
    .end local v22    # "dummyOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v28    # "j":I
    .restart local v15    # "app":Ljava/lang/String;
    .restart local v18    # "appString":[Ljava/lang/String;
    .restart local v20    # "arr$":[Ljava/lang/String;
    .restart local v26    # "i$":I
    .restart local v27    # "isSkip":Z
    .restart local v30    # "len$":I
    :cond_18
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_a

    .line 673
    .end local v15    # "app":Ljava/lang/String;
    .end local v18    # "appString":[Ljava/lang/String;
    .end local v20    # "arr$":[Ljava/lang/String;
    .end local v26    # "i$":I
    .end local v27    # "isSkip":Z
    .end local v30    # "len$":I
    .restart local v5    # "pkgOps":Landroid/app/AppOpsManager$PackageOps;
    .restart local v22    # "dummyOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .restart local v28    # "j":I
    :cond_19
    const/16 v29, 0x0

    .local v29, "k":I
    :goto_c
    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v29

    if-ge v0, v3, :cond_17

    .line 674
    move-object/from16 v0, v34

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v8, v8, v28

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 673
    :cond_1a
    :goto_d
    add-int/lit8 v29, v29, 0x1

    goto :goto_c

    .line 679
    :cond_1b
    move-object/from16 v0, v33

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/android/settings/applications/AppOpsState$AppEntry;->hasOp(I)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 682
    if-nez v22, :cond_1c

    .line 683
    new-instance v22, Ljava/util/ArrayList;

    .end local v22    # "dummyOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 684
    .restart local v22    # "dummyOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    new-instance v5, Landroid/app/AppOpsManager$PackageOps;

    .end local v5    # "pkgOps":Landroid/app/AppOpsManager$PackageOps;
    move-object/from16 v0, v17

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, v22

    invoke-direct {v5, v3, v8, v0}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 688
    .restart local v5    # "pkgOps":Landroid/app/AppOpsManager$PackageOps;
    :cond_1c
    new-instance v7, Landroid/app/AppOpsManager$OpEntry;

    move-object/from16 v0, v33

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v7 .. v14}, Landroid/app/AppOpsManager$OpEntry;-><init>(IIJJI)V

    .line 690
    .restart local v7    # "opEntry":Landroid/app/AppOpsManager$OpEntry;
    move-object/from16 v0, v22

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 691
    if-nez p3, :cond_1d

    const/4 v8, 0x1

    :goto_e
    if-nez p3, :cond_1e

    const/4 v9, 0x0

    :goto_f
    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/settings/applications/AppOpsState;->addOp(Ljava/util/List;Landroid/app/AppOpsManager$PackageOps;Lcom/android/settings/applications/AppOpsState$AppEntry;Landroid/app/AppOpsManager$OpEntry;ZI)V

    goto :goto_d

    :cond_1d
    const/4 v8, 0x0

    goto :goto_e

    :cond_1e
    invoke-virtual {v7}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v3

    aget v9, v31, v3

    goto :goto_f

    .line 699
    .end local v5    # "pkgOps":Landroid/app/AppOpsManager$PackageOps;
    .end local v6    # "appEntry":Lcom/android/settings/applications/AppOpsState$AppEntry;
    .end local v7    # "opEntry":Landroid/app/AppOpsManager$OpEntry;
    .end local v17    # "appInfo":Landroid/content/pm/PackageInfo;
    .end local v22    # "dummyOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v28    # "j":I
    .end local v29    # "k":I
    :cond_1f
    sget-object v3, Lcom/android/settings/applications/AppOpsState;->APP_OP_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v4, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 702
    return-object v4

    .line 604
    :catch_1
    move-exception v3

    goto/16 :goto_8
.end method
