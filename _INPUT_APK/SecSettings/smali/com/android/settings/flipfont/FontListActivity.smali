.class public Lcom/android/settings/flipfont/FontListActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "FontListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field public static DEBUG:Z

.field private static final apkNameList:[Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private isCheckPlatformSignatures:Z

.field private isCheckReleaseSignatures:Z

.field private isEasySettingsCall:Z

.field private mBuyButtonClicked:Z

.field private mCheckBadFont:Z

.field private mClickedItem:I

.field private mDefaultUseHelvetica:Z

.field private mDialogBottomPadding:I

.field private mDialogLeftPadding:I

.field private mDialogRightPadding:I

.field private mDialogTopPadding:I

.field private mFileCopying:Z

.field private mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListView:Landroid/widget/ListView;

.field private mPreviousFont:I

.field private mQuestionDialogFontSize:I

.field private mSavedClickedItem:I

.field private mSelectDialogIsActive:Z

.field mSetFontToAlert:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 69
    sput-boolean v2, Lcom/android/settings/flipfont/FontListActivity;->DEBUG:Z

    .line 688
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "com.monotype.android.font.chococooky"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.monotype.android.font.cooljazz"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.monotype.android.font.helvneuelt"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.monotype.android.font.samsungsans"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.monotype.android.font.rosemary"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.monotype.android.font.applemint"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.monotype.android.font.tinkerbell"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.monotype.android.font.udrgothic"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.monotype.android.font.udmincho"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.monotype.android.font.arjpopb"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.monotype.android.font.kaiti"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.monotype.android.font.shaonv"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.monotype.android.font.miao"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/flipfont/FontListActivity;->apkNameList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xa

    const/16 v2, 0x14

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 57
    iput-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    .line 64
    iput-boolean v0, p0, Lcom/android/settings/flipfont/FontListActivity;->mDefaultUseHelvetica:Z

    .line 68
    iput-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    .line 72
    iput v1, p0, Lcom/android/settings/flipfont/FontListActivity;->mPreviousFont:I

    .line 75
    iput v1, p0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    .line 78
    iput-boolean v0, p0, Lcom/android/settings/flipfont/FontListActivity;->mBuyButtonClicked:Z

    .line 81
    iput-boolean v0, p0, Lcom/android/settings/flipfont/FontListActivity;->mFileCopying:Z

    .line 84
    iput v2, p0, Lcom/android/settings/flipfont/FontListActivity;->mQuestionDialogFontSize:I

    .line 87
    iput v2, p0, Lcom/android/settings/flipfont/FontListActivity;->mDialogLeftPadding:I

    .line 89
    iput v3, p0, Lcom/android/settings/flipfont/FontListActivity;->mDialogTopPadding:I

    .line 91
    iput v2, p0, Lcom/android/settings/flipfont/FontListActivity;->mDialogRightPadding:I

    .line 93
    iput v3, p0, Lcom/android/settings/flipfont/FontListActivity;->mDialogBottomPadding:I

    .line 98
    iput-boolean v0, p0, Lcom/android/settings/flipfont/FontListActivity;->mSelectDialogIsActive:Z

    .line 103
    iput-boolean v0, p0, Lcom/android/settings/flipfont/FontListActivity;->mCheckBadFont:Z

    .line 105
    iput v1, p0, Lcom/android/settings/flipfont/FontListActivity;->mSavedClickedItem:I

    .line 113
    iput-boolean v0, p0, Lcom/android/settings/flipfont/FontListActivity;->isEasySettingsCall:Z

    .line 115
    iput-boolean v0, p0, Lcom/android/settings/flipfont/FontListActivity;->isCheckPlatformSignatures:Z

    .line 116
    iput-boolean v0, p0, Lcom/android/settings/flipfont/FontListActivity;->isCheckReleaseSignatures:Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/flipfont/FontListActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/flipfont/FontListActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/settings/flipfont/FontListActivity;->mSelectDialogIsActive:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/flipfont/FontListActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/flipfont/FontListActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    return-object v0
.end method

.method private copyFileWithCR(Lcom/android/settings/flipfont/FontWriter;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "fontWriter"    # Lcom/android/settings/flipfont/FontWriter;
    .param p2, "dir"    # Ljava/io/File;
    .param p3, "sPackageName"    # Ljava/lang/String;
    .param p4, "sFileIn"    # Ljava/lang/String;
    .param p5, "sFileOut"    # Ljava/lang/String;

    .prologue
    .line 475
    const/4 v0, 0x0

    .line 476
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .line 478
    .local v2, "err_filecopy":Z
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 484
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/fonts/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 485
    .local v4, "uriFont":Landroid/net/Uri;
    const/4 v3, 0x0

    .line 487
    .local v3, "isFont":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 494
    invoke-virtual {p1, p2, v3, p5}, Lcom/android/settings/flipfont/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v2

    .line 497
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_0
    move v5, v2

    .line 501
    .end local v3    # "isFont":Ljava/io/InputStream;
    .end local v4    # "uriFont":Landroid/net/Uri;
    :goto_1
    return v5

    .line 479
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move v5, v2

    .line 480
    goto :goto_1

    .line 488
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "isFont":Ljava/io/InputStream;
    .restart local v4    # "uriFont":Landroid/net/Uri;
    :catch_1
    move-exception v1

    .line 490
    .restart local v1    # "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    goto :goto_1

    .line 498
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v5

    goto :goto_0
.end method


# virtual methods
.method protected badFontDialog(Ljava/lang/String;)V
    .locals 5
    .param p1, "apkName"    # Ljava/lang/String;

    .prologue
    .line 800
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 803
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    move-object v2, p1

    .line 806
    .local v2, "deletePackageName":Ljava/lang/String;
    const v3, 0x7f0a0dc6

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 809
    const v3, 0x7f0a0dc7

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 812
    const v3, 0x1080027

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 815
    const v3, 0x104000a

    new-instance v4, Lcom/android/settings/flipfont/FontListActivity$7;

    invoke-direct {v4, p0, v2}, Lcom/android/settings/flipfont/FontListActivity$7;-><init>(Lcom/android/settings/flipfont/FontListActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 828
    const/high16 v3, 0x1040000

    new-instance v4, Lcom/android/settings/flipfont/FontListActivity$8;

    invoke-direct {v4, p0}, Lcom/android/settings/flipfont/FontListActivity$8;-><init>(Lcom/android/settings/flipfont/FontListActivity;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 835
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 836
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 837
    return-void
.end method

.method protected checkFont(Ljava/lang/String;)Z
    .locals 17
    .param p1, "apkname"    # Ljava/lang/String;

    .prologue
    .line 706
    sget-boolean v14, Lcom/android/settings/flipfont/FontListActivity;->DEBUG:Z

    if-eqz v14, :cond_0

    .line 707
    const-string v14, "FlipFont"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "checkFont - checking apkname"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 711
    .local v12, "pm":Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    sget-object v14, Lcom/android/settings/flipfont/FontListActivity;->apkNameList:[Ljava/lang/String;

    array-length v14, v14

    if-ge v7, v14, :cond_5

    .line 712
    sget-object v14, Lcom/android/settings/flipfont/FontListActivity;->apkNameList:[Ljava/lang/String;

    aget-object v14, v14, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 713
    const-string v14, "android"

    sget-object v15, Lcom/android/settings/flipfont/FontListActivity;->apkNameList:[Ljava/lang/String;

    aget-object v15, v15, v7

    invoke-virtual {v12, v14, v15}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_3

    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/settings/flipfont/FontListActivity;->isCheckPlatformSignatures:Z

    .line 714
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    sget-object v15, Lcom/android/settings/flipfont/FontListActivity;->apkNameList:[Ljava/lang/String;

    aget-object v15, v15, v7

    invoke-static {v14, v15}, Lcom/android/settings/Utils;->isSignatureMatch(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/settings/flipfont/FontListActivity;->isCheckReleaseSignatures:Z

    .line 715
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/flipfont/FontListActivity;->isCheckPlatformSignatures:Z

    if-nez v14, :cond_1

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/flipfont/FontListActivity;->isCheckReleaseSignatures:Z

    if-nez v14, :cond_1

    const-string v14, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 716
    :cond_1
    sget-boolean v14, Lcom/android/settings/flipfont/FontListActivity;->DEBUG:Z

    if-eqz v14, :cond_2

    .line 717
    const-string v14, "FlipFont"

    const-string v15, "**Apk name matches list**"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    :cond_2
    const/4 v14, 0x0

    .line 795
    :goto_2
    return v14

    .line 713
    :cond_3
    const/4 v14, 0x0

    goto :goto_1

    .line 711
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 725
    :cond_5
    sget-boolean v14, Lcom/android/settings/flipfont/FontListActivity;->DEBUG:Z

    if-eqz v14, :cond_6

    .line 726
    const-string v14, "FlipFont"

    const-string v15, "checkFont - check if valid certificate"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :cond_6
    const/4 v11, 0x0

    .line 730
    .local v11, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v14, v14, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v15, 0x40

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v11

    .line 734
    :goto_3
    const/4 v14, 0x1

    new-array v13, v14, [Landroid/content/pm/Signature;

    const/4 v14, 0x0

    new-instance v15, Landroid/content/pm/Signature;

    const-string v16, ""

    invoke-direct/range {v15 .. v16}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v15, v13, v14

    .line 736
    .local v13, "signatures":[Landroid/content/pm/Signature;
    if-eqz v11, :cond_7

    .line 737
    iget-object v13, v11, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 741
    :cond_7
    const/4 v14, 0x0

    aget-object v14, v13, v14

    invoke-virtual {v14}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    .line 743
    .local v2, "cert":[B
    :try_start_1
    const-string v14, "SHA"

    invoke-static {v14}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v10

    .line 744
    .local v10, "md":Ljava/security/MessageDigest;
    const/4 v14, 0x0

    aget-object v14, v13, v14

    invoke-virtual {v14}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/security/MessageDigest;->update([B)V

    .line 745
    invoke-virtual {v10}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v14, v15}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    .line 746
    .local v5, "currentSignature":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 749
    const-string v14, "T84drf8v3ZMOLvt2SFG/K7ODXgI="

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 750
    sget-boolean v14, Lcom/android/settings/flipfont/FontListActivity;->DEBUG:Z

    if-eqz v14, :cond_8

    .line 751
    const-string v14, "FlipFont"

    const-string v15, "**Signature is correct**"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    :cond_8
    const/4 v14, 0x0

    goto :goto_2

    .line 754
    :cond_9
    sget-boolean v14, Lcom/android/settings/flipfont/FontListActivity;->DEBUG:Z

    if-eqz v14, :cond_a

    .line 755
    const-string v14, "FlipFont"

    const-string v15, "**Signature is incorrect**"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 756
    :cond_a
    const/4 v14, 0x1

    goto :goto_2

    .line 758
    .end local v5    # "currentSignature":Ljava/lang/String;
    .end local v10    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v6

    .line 759
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 761
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 762
    .local v8, "input":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 764
    .local v4, "cf":Ljava/security/cert/CertificateFactory;
    :try_start_2
    const-string v14, "X509"

    invoke-static {v14}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v4

    .line 769
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_4
    const/4 v1, 0x0

    .line 771
    .local v1, "c":Ljava/security/cert/X509Certificate;
    :try_start_3
    invoke-virtual {v4, v8}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v1, v0
    :try_end_3
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_2

    .line 776
    :goto_5
    sget-boolean v14, Lcom/android/settings/flipfont/FontListActivity;->DEBUG:Z

    if-eqz v14, :cond_b

    .line 777
    const-string v14, "Example"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "APK name: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    const-string v14, "Example"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Certificate for: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    const-string v14, "Example"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Certificate issued by: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    const-string v14, "Example"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "The certificate is valid from "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " to "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    const-string v14, "Example"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Certificate SN# "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    const-string v14, "Example"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Generated with "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    :cond_b
    const-string v3, "CN=Ed Platz, OU=Display Imaging, O=Monotype Imanging Inc., L=Woburn, ST=MA, C=US"

    .line 787
    .local v3, "certIssuedByString":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v14

    invoke-interface {v14}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object v9

    .line 789
    .local v9, "issuerDNString":Ljava/lang/String;
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 790
    sget-boolean v14, Lcom/android/settings/flipfont/FontListActivity;->DEBUG:Z

    if-eqz v14, :cond_c

    .line 791
    const-string v14, "FlipFont"

    const-string v15, "**Certificate data is correct**"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    :cond_c
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 765
    .end local v1    # "c":Ljava/security/cert/X509Certificate;
    .end local v3    # "certIssuedByString":Ljava/lang/String;
    .end local v9    # "issuerDNString":Ljava/lang/String;
    .restart local v6    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    .line 767
    .local v6, "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v6}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto/16 :goto_4

    .line 772
    .end local v6    # "e":Ljava/security/cert/CertificateException;
    .restart local v1    # "c":Ljava/security/cert/X509Certificate;
    :catch_2
    move-exception v6

    .line 774
    .restart local v6    # "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v6}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto/16 :goto_5

    .line 795
    .end local v6    # "e":Ljava/security/cert/CertificateException;
    .restart local v3    # "certIssuedByString":Ljava/lang/String;
    .restart local v9    # "issuerDNString":Ljava/lang/String;
    :cond_d
    const/4 v14, 0x1

    goto/16 :goto_2

    .line 732
    .end local v1    # "c":Ljava/security/cert/X509Certificate;
    .end local v2    # "cert":[B
    .end local v3    # "certIssuedByString":Ljava/lang/String;
    .end local v4    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v8    # "input":Ljava/io/InputStream;
    .end local v9    # "issuerDNString":Ljava/lang/String;
    .end local v13    # "signatures":[Landroid/content/pm/Signature;
    :catch_3
    move-exception v14

    goto/16 :goto_3
.end method

.method public getSavedSelectedFontStringPreference()Ljava/lang/String;
    .locals 4

    .prologue
    .line 257
    const/4 v0, 0x0

    .line 258
    .local v0, "mode":I
    iget-object v2, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    const-string v3, "prefs"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 261
    .local v1, "mySharedPreference":Landroid/content/SharedPreferences;
    const-string v2, "selectedFont"

    const-string v3, "MONOTYPE"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public loadPreferences()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 858
    const/4 v2, 0x0

    .line 859
    .local v2, "mode":I
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    const-string v5, "prefs"

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 862
    .local v3, "mySharedPreference":Landroid/content/SharedPreferences;
    const-string v4, "SelectDialogIsActive"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mSelectDialogIsActive:Z

    .line 863
    const-string v4, "SavedClickedItem"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mSavedClickedItem:I

    .line 864
    iget v1, p0, Lcom/android/settings/flipfont/FontListActivity;->mSavedClickedItem:I

    .line 865
    .local v1, "fontIndexPref":I
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "flip_font_style"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 867
    .local v0, "fontIndexDB":I
    if-ne v0, v6, :cond_0

    .line 868
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "flip_font_style"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 869
    const-string v4, "FontListActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setFontStyleIndexForMultiUser() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    iput v1, p0, Lcom/android/settings/flipfont/FontListActivity;->mSavedClickedItem:I

    .line 874
    :goto_0
    return-void

    .line 872
    :cond_0
    iput v0, p0, Lcom/android/settings/flipfont/FontListActivity;->mSavedClickedItem:I

    goto :goto_0
.end method

.method public onCancelButtonPressed()V
    .locals 3

    .prologue
    .line 681
    if-eqz p0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListActivity;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListActivity;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/settings/flipfont/FontListActivity;->mPreviousFont:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 686
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v6, 0x0

    .line 283
    const/4 v4, -0x2

    if-ne p2, v4, :cond_2

    .line 284
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mSetFontToAlert:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 285
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mSetFontToAlert:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 286
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mSetFontToAlert:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->cancel()V

    .line 287
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mSetFontToAlert:Landroid/app/AlertDialog;

    .line 331
    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    .line 332
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListActivity;->dismiss()V

    .line 336
    :cond_1
    return-void

    .line 315
    :cond_2
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0db1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 317
    .local v3, "uri":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 318
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 319
    const v4, 0x14000020

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 320
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 321
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 322
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 323
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0db0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .end local v3    # "uri":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 325
    .restart local v3    # "uri":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 327
    :cond_3
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 328
    iput-boolean v6, p0, Lcom/android/settings/flipfont/FontListActivity;->mBuyButtonClicked:Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    const v6, 0x7f0a0dc5

    const/4 v8, 0x0

    const v7, 0x7f0a0dab

    .line 121
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 122
    const-string v4, "PRABHAT"

    const-string v5, "onCreate()"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iput-object p0, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    .line 126
    invoke-virtual {p0, v6}, Lcom/android/settings/flipfont/FontListActivity;->setTitle(I)V

    .line 128
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/android/settings/flipfont/FontListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    iput-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 129
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 130
    .local v0, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    invoke-virtual {p0, v6}, Lcom/android/settings/flipfont/FontListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200f0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 132
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f04008d

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 133
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 134
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 135
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 136
    const v4, 0x7f0a01d1

    invoke-virtual {p0, v4}, Lcom/android/settings/flipfont/FontListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 137
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 144
    :cond_0
    :goto_0
    iget-object v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v5, 0x7f100174

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mListView:Landroid/widget/ListView;

    .line 146
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    if-nez v4, :cond_1

    .line 147
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/flipfont/FontListAdapter;->getInstanceFontListAdapter(Landroid/content/Context;)Lcom/android/settings/flipfont/FontListAdapter;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    .line 148
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v4}, Lcom/android/settings/flipfont/FontListAdapter;->loadTypefaces()V

    .line 150
    invoke-static {}, Lcom/android/settings/flipfont/FontListAdapter;->destroyInstance()V

    .line 153
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "EasySettingsBundle"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 155
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v4, "FontListActivity"

    const-string v5, "isEasySettingsCall  :  Intent is NOT null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    if-eqz v1, :cond_6

    .line 157
    const-string v4, "FontListActivity"

    const-string v5, "isEasySettingsCall  :  bundle is NOT null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const-string v4, "EasySettings"

    invoke-virtual {v1, v4, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/flipfont/FontListActivity;->isEasySettingsCall:Z

    .line 165
    .end local v1    # "bundle":Landroid/os/Bundle;
    :goto_1
    const-string v4, "FontListActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isEasySettingsCall  :  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settings/flipfont/FontListActivity;->isEasySettingsCall:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 168
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListActivity;->setupAlert()V

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListActivity;->getSavedSelectedFontStringPreference()Ljava/lang/String;

    move-result-object v3

    .line 176
    .local v3, "selectedFont":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 177
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0dac

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 184
    .local v2, "okButton":Ljava/lang/String;
    :goto_2
    const-string v4, "FontListActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPrepareDialogBuilder : selectedFont : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const-string v4, "FontListActivity"

    const-string v5, "onPrepareDialogBuilder : KEY_PREFERENCE : MONOTYPE"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const-string v4, "MONOTYPE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 190
    const-string v4, "FontListActivity"

    const-string v5, "onPrepareDialogBuilder : selectedFont == KEY_PREFERENCE"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-boolean v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mDefaultUseHelvetica:Z

    if-eqz v4, :cond_9

    .line 193
    const-string v3, "HelveticaNeueRegular.xml"

    .line 194
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v4, v4, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v4

    iput v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mPreviousFont:I

    .line 195
    const-string v4, "FontListActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPrepareDialogBuilder : Use Helvetica by default. selectedFont : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const-string v4, "FontListActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPrepareDialogBuilder : Helvetica index : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/flipfont/FontListActivity;->mPreviousFont:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :goto_3
    iget v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mPreviousFont:I

    if-gez v4, :cond_2

    .line 215
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mPreviousFont:I

    .line 219
    :cond_2
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mListView:Landroid/widget/ListView;

    iget v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mPreviousFont:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 228
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v4}, Lcom/android/settings/flipfont/FontListAdapter;->getCount()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_3

    .line 229
    const v4, 0x7f0a0db2

    invoke-virtual {p0, v4}, Lcom/android/settings/flipfont/FontListActivity;->setTitle(I)V

    .line 232
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListActivity;->loadPreferences()V

    .line 233
    iget-boolean v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mSelectDialogIsActive:Z

    if-eqz v4, :cond_4

    .line 234
    iput-boolean v8, p0, Lcom/android/settings/flipfont/FontListActivity;->mSelectDialogIsActive:Z

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListActivity;->savePreferences()V

    .line 236
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListActivity;->selectDialog()V

    .line 239
    :cond_4
    const-string v4, "PRABHAT"

    const-string v5, "onCreate() - end"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return-void

    .line 140
    .end local v2    # "okButton":Ljava/lang/String;
    .end local v3    # "selectedFont":Ljava/lang/String;
    :cond_5
    const-string v4, "CHM"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 160
    .restart local v1    # "bundle":Landroid/os/Bundle;
    :cond_6
    const-string v4, "FontListActivity"

    const-string v5, "isEasySettingsCall  :  bundle is NOT null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 163
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_7
    const-string v4, "FontListActivity"

    const-string v5, "isEasySettingsCall  :  Intent is null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 180
    .restart local v3    # "selectedFont":Ljava/lang/String;
    :cond_8
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .restart local v2    # "okButton":Ljava/lang/String;
    goto/16 :goto_2

    .line 200
    :cond_9
    const-string v3, "default"

    .line 201
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v4, v4, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v4

    iput v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mPreviousFont:I

    .line 202
    const-string v4, "FontListActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPrepareDialogBuilder : Use Android DroidSans by default. selectedFont : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const-string v4, "FontListActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPrepareDialogBuilder : Android DroidSans index : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/flipfont/FontListActivity;->mPreviousFont:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 208
    :cond_a
    const-string v4, "FontListActivity"

    const-string v5, "onPrepareDialogBuilder : selectedFont != KEY_PREFERENCE"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v4, v4, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v4

    iput v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mPreviousFont:I

    .line 210
    const-string v4, "FontListActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPrepareDialogBuilder : selectedFont : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const-string v4, "FontListActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPrepareDialogBuilder : selectedFont index : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/flipfont/FontListActivity;->mPreviousFont:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "which"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 344
    iget v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mPreviousFont:I

    if-ne p3, v5, :cond_0

    .line 410
    :goto_0
    return-void

    .line 349
    :cond_0
    const/4 v3, 0x0

    .line 350
    .local v3, "question":Ljava/lang/String;
    const/4 v1, 0x0

    .line 351
    .local v1, "fontName":Ljava/lang/String;
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mSetFontToAlert:Landroid/app/AlertDialog;

    .line 352
    iput p3, p0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    .line 354
    const/4 v2, 0x0

    .line 355
    .local v2, "press_apkname":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    if-eqz v5, :cond_1

    .line 356
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v5, v5, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    iget v6, p0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    invoke-virtual {v5, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 358
    :cond_1
    #invoke-virtual {p0, v2}, Lcom/android/settings/flipfont/FontListActivity;->checkFont(Ljava/lang/String;)Z

    #move-result v5

	const/4 v5, 0x0
    #iput-boolean v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mCheckBadFont:Z

    .line 359
    #iget-boolean v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mCheckBadFont:Z

    if-eqz v5, :cond_2

    .line 360
    #invoke-virtual {p0, v2}, Lcom/android/settings/flipfont/FontListActivity;->badFontDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 364
    :cond_2
    if-ge p3, v8, :cond_3

    .line 365
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0dae

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 367
    .local v4, "s":Ljava/lang/String;
    move-object v3, v4

    .line 378
    :goto_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 379
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0a00bc

    new-instance v6, Lcom/android/settings/flipfont/FontListActivity$2;

    invoke-direct {v6, p0}, Lcom/android/settings/flipfont/FontListActivity$2;-><init>(Lcom/android/settings/flipfont/FontListActivity;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a00bd

    new-instance v7, Lcom/android/settings/flipfont/FontListActivity$1;

    invoke-direct {v7, p0}, Lcom/android/settings/flipfont/FontListActivity$1;-><init>(Lcom/android/settings/flipfont/FontListActivity;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 392
    new-instance v5, Lcom/android/settings/flipfont/FontListActivity$3;

    invoke-direct {v5, p0}, Lcom/android/settings/flipfont/FontListActivity$3;-><init>(Lcom/android/settings/flipfont/FontListActivity;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 399
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 400
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0daf

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 401
    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 403
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mSetFontToAlert:Landroid/app/AlertDialog;

    .line 404
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mSetFontToAlert:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 406
    iget v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    iput v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mSavedClickedItem:I

    .line 407
    iput-boolean v8, p0, Lcom/android/settings/flipfont/FontListActivity;->mSelectDialogIsActive:Z

    .line 409
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListActivity;->savePreferences()V

    goto/16 :goto_0

    .line 369
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v4    # "s":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0dad

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 371
    .restart local v4    # "s":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    if-nez v5, :cond_4

    .line 372
    new-instance v5, Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v6, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/settings/flipfont/FontListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    .line 373
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v5}, Lcom/android/settings/flipfont/FontListAdapter;->loadTypefaces()V

    .line 375
    :cond_4
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget v6, p0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    invoke-virtual {v5, v6}, Lcom/android/settings/flipfont/FontListAdapter;->getFontName(I)Ljava/lang/String;

    move-result-object v1

    .line 376
    new-array v5, v8, [Ljava/lang/Object;

    aput-object v1, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1
.end method

.method public onOkButtonPressed()Z
    .locals 34

    .prologue
    .line 509
    const/16 v17, 0x0

    .line 512
    .local v17, "err_filecopy":Z
    const-string v2, "FontListActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onOkButtonPressed : mClickedItem : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    const/4 v5, 0x0

    .line 514
    .local v5, "apkname":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    if-eqz v2, :cond_0

    .line 515
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    invoke-virtual {v2, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 517
    :cond_0
    move-object/from16 v0, p0

    #invoke-virtual {v0, v5}, Lcom/android/settings/flipfont/FontListActivity;->checkFont(Ljava/lang/String;)Z

    #move-result v2
	const/4 v2, 0x0

    if-eqz v2, :cond_2

    .line 518
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/flipfont/FontListActivity;->mSavedClickedItem:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    .line 521
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListActivity;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/flipfont/FontListActivity;->mPreviousFont:I

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 522
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/flipfont/FontListActivity;->savePreferences()V

    .line 523
    sget-boolean v2, Lcom/android/settings/flipfont/FontListActivity;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 524
    const-string v2, "FlipFont"

    const-string v6, "**onOkButtonPressed - bad font**"

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_1
    const/4 v2, 0x0

    .line 674
    :goto_0
    return v2

    .line 528
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    const/4 v6, -0x1

    if-ne v2, v6, :cond_5

    .line 529
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/flipfont/FontListActivity;->mSavedClickedItem:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    .line 533
    :goto_1
    const-string v2, "FontListActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onOkButtonPressed : mSavedClickedItem : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings/flipfont/FontListActivity;->mSavedClickedItem:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/flipfont/FontListActivity;->savePreferences()V

    .line 536
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    if-nez v2, :cond_3

    .line 537
    new-instance v2, Lcom/android/settings/flipfont/FontListAdapter;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-direct {v2, v6}, Lcom/android/settings/flipfont/FontListAdapter;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    .line 538
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v2}, Lcom/android/settings/flipfont/FontListAdapter;->loadTypefaces()V

    .line 541
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    invoke-virtual {v2, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    .line 543
    .local v30, "selectedFont":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/flipfont/FontListActivity;->saveSelectedFontStringPreferences(Ljava/lang/String;)V

    .line 546
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/flipfont/FontListActivity;->mPreviousFont:I

    .line 548
    new-instance v3, Lcom/android/settings/flipfont/FontWriter;

    invoke-direct {v3}, Lcom/android/settings/flipfont/FontWriter;-><init>()V

    .line 549
    .local v3, "fontWriter":Lcom/android/settings/flipfont/FontWriter;
    if-eqz v30, :cond_4

    const-string v2, "default"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 550
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    const-string v6, " "

    invoke-virtual {v3, v2, v6}, Lcom/android/settings/flipfont/FontWriter;->deleteFontDirectory(Landroid/content/Context;Ljava/lang/String;)V

    .line 552
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    const-string v6, "sans.loc"

    const-string v7, "default#default"

    invoke-virtual {v3, v2, v6, v7}, Lcom/android/settings/flipfont/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    if-nez v30, :cond_b

    .line 554
    const-string v2, "FontListActivity"

    const-string v6, "onOkButtonPressed() : selectedFont == null "

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 531
    .end local v3    # "fontWriter":Lcom/android/settings/flipfont/FontWriter;
    .end local v30    # "selectedFont":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/flipfont/FontListActivity;->mSavedClickedItem:I

    goto/16 :goto_1

    .line 561
    .restart local v3    # "fontWriter":Lcom/android/settings/flipfont/FontWriter;
    .restart local v30    # "selectedFont":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/android/settings/flipfont/TypefaceFinder;

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Lcom/android/settings/flipfont/TypefaceFinder;->findMatchingTypeface(Ljava/lang/String;)Lcom/android/settings/flipfont/Typeface;

    move-result-object v29

    .line 563
    .local v29, "sansTypeface":Lcom/android/settings/flipfont/Typeface;
    move-object/from16 v28, v30

    .line 564
    .local v28, "sFontDir":Ljava/lang/String;
    const-string v2, ".xml"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    .line 565
    .local v22, "index":I
    if-lez v22, :cond_7

    .line 566
    const/4 v2, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    .line 567
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    move-object/from16 v0, v28

    invoke-virtual {v3, v2, v0}, Lcom/android/settings/flipfont/FontWriter;->createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 569
    .local v4, "fontDir":Ljava/io/File;
    const/16 v31, 0x0

    .line 570
    .local v31, "tpf":Lcom/android/settings/flipfont/TypefaceFile;
    if-eqz v29, :cond_8

    .line 571
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_2
    move-object/from16 v0, v29

    iget-object v2, v0, Lcom/android/settings/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_8

    .line 572
    move-object/from16 v0, v29

    iget-object v2, v0, Lcom/android/settings/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    move/from16 v0, v19

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    .end local v31    # "tpf":Lcom/android/settings/flipfont/TypefaceFile;
    check-cast v31, Lcom/android/settings/flipfont/TypefaceFile;

    .line 575
    .restart local v31    # "tpf":Lcom/android/settings/flipfont/TypefaceFile;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    invoke-virtual {v2, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    .line 577
    .local v23, "press_apknam":Ljava/lang/String;
    const-string v2, "FontListActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onOkButtonPressed : Application name, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v6, 0x80

    move-object/from16 v0, v23

    invoke-virtual {v2, v0, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    .line 579
    .local v12, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v12, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v2, v12, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 580
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v12}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v25

    .line 582
    .local v25, "res":Landroid/content/res/Resources;
    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v13

    .line 583
    .local v13, "assetManager":Landroid/content/res/AssetManager;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fonts/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v31 .. v31}, Lcom/android/settings/flipfont/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v21

    .line 585
    .local v21, "in":Ljava/io/InputStream;
    invoke-virtual/range {v31 .. v31}, Lcom/android/settings/flipfont/TypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v3, v4, v0, v2}, Lcom/android/settings/flipfont/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v17

    .line 586
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    .end local v12    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v13    # "assetManager":Landroid/content/res/AssetManager;
    .end local v21    # "in":Ljava/io/InputStream;
    .end local v23    # "press_apknam":Ljava/lang/String;
    .end local v25    # "res":Landroid/content/res/Resources;
    :goto_3
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_2

    .line 588
    :catch_0
    move-exception v18

    .line 590
    .local v18, "ex":Ljava/lang/Exception;
    invoke-virtual/range {v31 .. v31}, Lcom/android/settings/flipfont/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v31 .. v31}, Lcom/android/settings/flipfont/TypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/flipfont/FontListActivity;->copyFileWithCR(Lcom/android/settings/flipfont/FontWriter;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    goto :goto_3

    .line 595
    .end local v18    # "ex":Ljava/lang/Exception;
    .end local v19    # "i":I
    :cond_8
    const/4 v2, 0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_a

    .line 597
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/flipfont/FontListActivity;->mSavedClickedItem:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    .line 598
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/flipfont/FontListActivity;->savePreferences()V

    .line 599
    sget-boolean v2, Lcom/android/settings/flipfont/FontListActivity;->DEBUG:Z

    if-eqz v2, :cond_9

    .line 600
    const-string v2, "FlipFont"

    const-string v6, "**onOkButtonPressed - enospc error **"

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 605
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    move-object/from16 v0, v28

    invoke-virtual {v3, v2, v0}, Lcom/android/settings/flipfont/FontWriter;->deleteFontDirectory(Landroid/content/Context;Ljava/lang/String;)V

    .line 606
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/flipfont/FontListActivity;->mSavedClickedItem:I

    .line 607
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/flipfont/FontListActivity;->savePreferences()V

    .line 608
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/flipfont/FontListActivity;->mPreviousFont:I

    .line 610
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    const-string v6, "sans.loc"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v32, "#"

    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v2, v6, v7}, Lcom/android/settings/flipfont/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    .end local v4    # "fontDir":Ljava/io/File;
    .end local v22    # "index":I
    .end local v28    # "sFontDir":Ljava/lang/String;
    .end local v29    # "sansTypeface":Lcom/android/settings/flipfont/Typeface;
    .end local v31    # "tpf":Lcom/android/settings/flipfont/TypefaceFile;
    :cond_b
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v11

    .line 615
    .local v11, "am":Landroid/app/IActivityManager;
    invoke-interface {v11}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    .line 616
    .local v14, "config":Landroid/content/res/Configuration;
    new-instance v24, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, v24

    invoke-direct {v0, v6, v7}, Ljava/util/Random;-><init>(J)V

    .line 621
    .local v24, "randomizer":Ljava/util/Random;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, v14, Landroid/content/res/Configuration;->FlipFont:I

    .line 622
    invoke-interface {v11, v14}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 630
    .end local v11    # "am":Landroid/app/IActivityManager;
    .end local v14    # "config":Landroid/content/res/Configuration;
    .end local v24    # "randomizer":Ljava/util/Random;
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager;

    .line 632
    .local v9, "activityManager":Landroid/app/ActivityManager;
    const/16 v2, 0x32

    invoke-virtual {v9, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v10

    .line 633
    .local v10, "allTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/16 v19, 0x1

    .line 634
    .restart local v19    # "i":I
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "i$":Ljava/util/Iterator;
    :cond_c
    :goto_5
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 635
    .local v8, "aTask":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v2, v8, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v27

    .line 637
    .local v27, "s":Ljava/lang/String;
    const-string v2, "com.android.settings"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "com.samsung.music"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "com.sec.android.app.music"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_c

    .line 638
    const-string v2, "com.infraware.polarisoffice"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "com.infraware.polarisoffice4"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "com.infraware.polarisviewer4"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "com.infraware.PolarisOfficeStdForTablet"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "com.infraware.polarisviewer5tablet"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "com.infraware.polarisoffice5tablet"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "com.infraware.polarisoffice4.document"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "com.infraware.polarisoffice5"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "com.infraware.polarisoffice5.document"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "com.infraware.polarisviewer5"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "com.infraware.polarisviewer5.document"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_e

    .line 642
    :cond_d
    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 625
    .end local v8    # "aTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v9    # "activityManager":Landroid/app/ActivityManager;
    .end local v10    # "allTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v19    # "i":I
    .end local v20    # "i$":Ljava/util/Iterator;
    .end local v27    # "s":Ljava/lang/String;
    :catch_1
    move-exception v15

    .line 627
    .local v15, "e":Landroid/os/RemoteException;
    const-string v2, "FontListActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Intentionally left blank, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 645
    .end local v15    # "e":Landroid/os/RemoteException;
    .restart local v8    # "aTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .restart local v9    # "activityManager":Landroid/app/ActivityManager;
    .restart local v10    # "allTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v19    # "i":I
    .restart local v20    # "i$":Ljava/util/Iterator;
    .restart local v27    # "s":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 652
    .end local v8    # "aTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v27    # "s":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/flipfont/FontListActivity;->isEasySettingsCall:Z

    if-eqz v2, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/flipfont/FontListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v6, "com.sec.android.easysettings"

    invoke-static {v2, v6}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 654
    const-string v2, "FontListActivity"

    const-string v6, "FORCE CLOSE PACKAGE :  com.sec.android.easysettings"

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const-string v2, "com.sec.android.easysettings"

    invoke-virtual {v9, v2}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 657
    const-string v2, "FontListActivity"

    const-string v6, "RESTARTING PACKAGE :  com.sec.android.easysettings"

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 659
    .local v16, "easySettingsIntent":Landroid/content/Intent;
    const-string v2, "com.sec.android.easysettings"

    const-string v6, "com.sec.android.easysettings.EasySettingsHomeActivity"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 660
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/flipfont/FontListActivity;->startActivity(Landroid/content/Intent;)V

    .line 663
    const-string v2, "com.android.settings"

    invoke-virtual {v9, v2}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    .line 664
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 673
    .end local v16    # "easySettingsIntent":Landroid/content/Intent;
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/flipfont/FontListActivity;->restartLater()V

    .line 674
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 667
    :cond_10
    const-string v2, "com.android.settings"

    invoke-virtual {v9, v2}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    .line 669
    new-instance v26, Landroid/content/Intent;

    invoke-direct/range {v26 .. v26}, Landroid/content/Intent;-><init>()V

    .line 670
    .local v26, "returnIntent":Landroid/content/Intent;
    const/4 v2, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/flipfont/FontListActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_6
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 250
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 252
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 245
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 246
    return-void
.end method

.method public restartLater()V
    .locals 0

    .prologue
    .line 464
    if-eqz p0, :cond_0

    .line 465
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListActivity;->dismiss()V

    .line 467
    :cond_0
    return-void
.end method

.method protected savePreferences()V
    .locals 6

    .prologue
    .line 841
    const/4 v1, 0x0

    .line 842
    .local v1, "mode":I
    iget-object v3, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    const-string v4, "prefs"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 845
    .local v2, "mySharedPreference":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 847
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "SelectDialogIsActive"

    iget-boolean v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mSelectDialogIsActive:Z

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 848
    const-string v3, "SavedClickedItem"

    iget v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mSavedClickedItem:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 850
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 853
    iget-object v3, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "flip_font_style"

    iget v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mSavedClickedItem:I

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 854
    return-void
.end method

.method public saveSelectedFontStringPreferences(Ljava/lang/String;)V
    .locals 5
    .param p1, "selectedFont"    # Ljava/lang/String;

    .prologue
    .line 267
    const/4 v1, 0x0

    .line 268
    .local v1, "mode":I
    iget-object v3, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    const-string v4, "prefs"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 271
    .local v2, "mySharedPreference":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 273
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "selectedFont"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 275
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 276
    return-void
.end method

.method public selectDialog()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 413
    const/4 v3, 0x0

    .line 414
    .local v3, "question":Ljava/lang/String;
    const/4 v2, 0x0

    .line 415
    .local v2, "fontName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListActivity;->loadPreferences()V

    .line 416
    iget v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mSavedClickedItem:I

    iput v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    .line 417
    iget v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    if-ge v5, v8, :cond_0

    .line 418
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0dae

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 420
    .local v4, "s":Ljava/lang/String;
    move-object v3, v4

    .line 427
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 428
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0a00bc

    new-instance v6, Lcom/android/settings/flipfont/FontListActivity$5;

    invoke-direct {v6, p0}, Lcom/android/settings/flipfont/FontListActivity$5;-><init>(Lcom/android/settings/flipfont/FontListActivity;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a00bd

    new-instance v7, Lcom/android/settings/flipfont/FontListActivity$4;

    invoke-direct {v7, p0}, Lcom/android/settings/flipfont/FontListActivity$4;-><init>(Lcom/android/settings/flipfont/FontListActivity;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 442
    new-instance v5, Lcom/android/settings/flipfont/FontListActivity$6;

    invoke-direct {v5, p0}, Lcom/android/settings/flipfont/FontListActivity$6;-><init>(Lcom/android/settings/flipfont/FontListActivity;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 449
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 450
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0daf

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 451
    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 452
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 453
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 454
    iget v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    iput v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mSavedClickedItem:I

    .line 455
    iput-boolean v8, p0, Lcom/android/settings/flipfont/FontListActivity;->mSelectDialogIsActive:Z

    .line 456
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListActivity;->savePreferences()V

    .line 457
    return-void

    .line 422
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v4    # "s":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0dad

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 424
    .restart local v4    # "s":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget v6, p0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    invoke-virtual {v5, v6}, Lcom/android/settings/flipfont/FontListAdapter;->getFontName(I)Ljava/lang/String;

    move-result-object v2

    .line 425
    new-array v5, v8, [Ljava/lang/Object;

    aput-object v2, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
