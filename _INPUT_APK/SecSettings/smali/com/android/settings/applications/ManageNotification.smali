.class public Lcom/android/settings/applications/ManageNotification;
.super Landroid/app/Fragment;
.source "ManageNotification.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/ManageNotification$MyAdapter;,
        Lcom/android/settings/applications/ManageNotification$ViewHolder;
    }
.end annotation


# instance fields
.field private appAdapter:Lcom/android/settings/applications/ManageNotification$MyAdapter;

.field private mAllAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAppList:Landroid/widget/ListView;

.field private mPm:Landroid/content/pm/PackageManager;

.field private final notificationComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/ManageNotification;->mAllAppList:Ljava/util/List;

    .line 229
    new-instance v0, Lcom/android/settings/applications/ManageNotification$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ManageNotification$1;-><init>(Lcom/android/settings/applications/ManageNotification;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageNotification;->notificationComparator:Ljava/util/Comparator;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/ManageNotification;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/ManageNotification;
    .param p1, "x1"    # Landroid/widget/TextView;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/ManageNotification;->setSummaryText(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/applications/ManageNotification;)Lcom/android/settings/applications/ManageNotification$MyAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageNotification;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/applications/ManageNotification;->appAdapter:Lcom/android/settings/applications/ManageNotification$MyAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/applications/ManageNotification;Ljava/lang/String;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/ManageNotification;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/applications/ManageNotification;->setNewConfigure(Ljava/lang/String;II)V

    return-void
.end method

.method public static getNotificationSetting(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 226
    invoke-static {p0}, Lcom/android/settings/applications/ManageNotification;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 210
    const-string v0, "notification_manager_settings"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private initLayout(Landroid/view/LayoutInflater;Landroid/view/View;)V
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "layout"    # Landroid/view/View;

    .prologue
    .line 92
    const v0, 0x7f10026a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/applications/ManageNotification;->mAppList:Landroid/widget/ListView;

    .line 93
    new-instance v0, Lcom/android/settings/applications/ManageNotification$MyAdapter;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageNotification;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/ManageNotification;->mAllAppList:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/applications/ManageNotification$MyAdapter;-><init>(Lcom/android/settings/applications/ManageNotification;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageNotification;->appAdapter:Lcom/android/settings/applications/ManageNotification$MyAdapter;

    .line 94
    iget-object v0, p0, Lcom/android/settings/applications/ManageNotification;->mAppList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/applications/ManageNotification;->appAdapter:Lcom/android/settings/applications/ManageNotification$MyAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 95
    iget-object v0, p0, Lcom/android/settings/applications/ManageNotification;->mAppList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 96
    return-void
.end method

.method private isThisASystemPackage(Ljava/lang/String;)Z
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 169
    const/4 v1, 0x0

    .line 172
    .local v1, "mPackageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/applications/ManageNotification;->mPm:Landroid/content/pm/PackageManager;

    const/16 v5, 0x2240

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 181
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/android/settings/applications/ManageNotification;->mPm:Landroid/content/pm/PackageManager;

    const-string v5, "android"

    const/16 v6, 0x40

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 182
    .local v2, "sys":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v4, :cond_0

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 185
    .end local v2    # "sys":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_1
    return v3

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "ManageNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception when retrieving package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 184
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 185
    .restart local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1
.end method

.method public static saveNotificationSetting(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 214
    invoke-static {p0}, Lcom/android/settings/applications/ManageNotification;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 215
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 216
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 217
    return-void
.end method

.method private setNewConfigure(Ljava/lang/String;II)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "newValue"    # I
    .param p3, "oldValue"    # I

    .prologue
    .line 315
    if-nez p2, :cond_0

    .line 316
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/applications/ManageNotification;->setNotificationsEnabled(Ljava/lang/String;Z)V

    .line 318
    :cond_0
    if-nez p3, :cond_1

    .line 319
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/settings/applications/ManageNotification;->setNotificationsEnabled(Ljava/lang/String;Z)V

    .line 320
    :cond_1
    return-void
.end method

.method private setNotificationsEnabled(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "isChecked"    # Z

    .prologue
    .line 190
    const-string v3, "notification"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v2

    .line 193
    .local v2, "nm":Landroid/app/INotificationManager;
    const/4 v0, 0x0

    .line 195
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/applications/ManageNotification;->mPm:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 201
    :goto_0
    if-eqz v0, :cond_0

    .line 202
    :try_start_1
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v2, p1, v3, p2}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 207
    :cond_0
    :goto_1
    return-void

    .line 196
    :catch_0
    move-exception v1

    .line 197
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 204
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method private setSummaryText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 5
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    const v4, 0x7f0a1df2

    const v3, 0x7f0a1df1

    .line 287
    const-string v1, ""

    .line 288
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageNotification;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/android/settings/applications/ManageNotification;->getNotificationSetting(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 290
    .local v0, "mask":I
    packed-switch v0, :pswitch_data_0

    .line 311
    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    return-void

    .line 292
    :pswitch_0
    const-string v1, ""

    .line 293
    goto :goto_0

    .line 296
    :pswitch_1
    invoke-virtual {p0, v3}, Lcom/android/settings/applications/ManageNotification;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 297
    goto :goto_0

    .line 300
    :pswitch_2
    invoke-virtual {p0, v4}, Lcom/android/settings/applications/ManageNotification;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 301
    goto :goto_0

    .line 304
    :pswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Lcom/android/settings/applications/ManageNotification;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/android/settings/applications/ManageNotification;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 305
    goto :goto_0

    .line 290
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showDialog(Ljava/lang/String;)V
    .locals 12
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 238
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageNotification;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v10, 0x7f040114

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 240
    .local v1, "alertDlg":Landroid/view/View;
    const v7, 0x7f100267

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckedTextView;

    .line 241
    .local v3, "indicator_check":Landroid/widget/CheckedTextView;
    const v7, 0x7f100266

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 242
    .local v4, "indicator_parent":Landroid/widget/RelativeLayout;
    new-instance v7, Lcom/android/settings/applications/ManageNotification$2;

    invoke-direct {v7, p0, v3}, Lcom/android/settings/applications/ManageNotification$2;-><init>(Lcom/android/settings/applications/ManageNotification;Landroid/widget/CheckedTextView;)V

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    const v7, 0x7f100269

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckedTextView;

    .line 250
    .local v5, "panel_check":Landroid/widget/CheckedTextView;
    const v7, 0x7f100268

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 251
    .local v6, "panel_parent":Landroid/widget/RelativeLayout;
    new-instance v7, Lcom/android/settings/applications/ManageNotification$3;

    invoke-direct {v7, p0, v5}, Lcom/android/settings/applications/ManageNotification$3;-><init>(Lcom/android/settings/applications/ManageNotification;Landroid/widget/CheckedTextView;)V

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageNotification;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, p1}, Lcom/android/settings/applications/ManageNotification;->getNotificationSetting(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 259
    .local v2, "checkValue":I
    and-int/lit8 v7, v2, 0x1

    if-lez v7, :cond_0

    move v7, v8

    :goto_0
    invoke-virtual {v3, v7}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 260
    and-int/lit8 v7, v2, 0x2

    if-lez v7, :cond_1

    :goto_1
    invoke-virtual {v5, v8}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 262
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageNotification;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 263
    .local v0, "alertDialog":Landroid/app/AlertDialog$Builder;
    const v7, 0x7f0a1df3

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 264
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 265
    const v7, 0x7f0a091f

    new-instance v8, Lcom/android/settings/applications/ManageNotification$4;

    invoke-direct {v8, p0, p1, v3, v5}, Lcom/android/settings/applications/ManageNotification$4;-><init>(Lcom/android/settings/applications/ManageNotification;Ljava/lang/String;Landroid/widget/CheckedTextView;Landroid/widget/CheckedTextView;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 283
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 284
    return-void

    .end local v0    # "alertDialog":Landroid/app/AlertDialog$Builder;
    :cond_0
    move v7, v9

    .line 259
    goto :goto_0

    :cond_1
    move v8, v9

    .line 260
    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageNotification;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/applications/ManageNotification;->mPm:Landroid/content/pm/PackageManager;

    .line 66
    iget-object v4, p0, Lcom/android/settings/applications/ManageNotification;->mPm:Landroid/content/pm/PackageManager;

    const/16 v5, 0x2000

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 68
    .local v2, "packs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/settings/applications/ManageNotification;->mAllAppList:Ljava/util/List;

    .line 70
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 71
    .local v3, "pi":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/settings/applications/ManageNotification;->isThisASystemPackage(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 72
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 73
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "app_icon"

    iget-object v5, p0, Lcom/android/settings/applications/ManageNotification;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v4, "app_name"

    iget-object v5, p0, Lcom/android/settings/applications/ManageNotification;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v4, "pkg_name"

    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v4, p0, Lcom/android/settings/applications/ManageNotification;->mAllAppList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 80
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "pi":Landroid/content/pm/ApplicationInfo;
    :cond_1
    iget-object v4, p0, Lcom/android/settings/applications/ManageNotification;->mAllAppList:Ljava/util/List;

    iget-object v5, p0, Lcom/android/settings/applications/ManageNotification;->notificationComparator:Ljava/util/Comparator;

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 81
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 85
    const v1, 0x7f040115

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 86
    .local v0, "v":Landroid/view/View;
    invoke-direct {p0, p1, v0}, Lcom/android/settings/applications/ManageNotification;->initLayout(Landroid/view/LayoutInflater;Landroid/view/View;)V

    .line 88
    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
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
    .line 155
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/settings/applications/ManageNotification;->appAdapter:Lcom/android/settings/applications/ManageNotification$MyAdapter;

    invoke-virtual {v1, p3}, Lcom/android/settings/applications/ManageNotification$MyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 156
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "pkg_name"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings/applications/ManageNotification;->showDialog(Ljava/lang/String;)V

    .line 157
    return-void
.end method
