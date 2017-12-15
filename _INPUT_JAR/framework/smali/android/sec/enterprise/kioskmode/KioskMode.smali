.class public Landroid/sec/enterprise/kioskmode/KioskMode;
.super Ljava/lang/Object;
.source "KioskMode.java"


# static fields
.field public static CONTROL_PANEL_PKGNAME:Ljava/lang/String; = null

.field public static MINI_TASK_MANAGER_PKGNAME:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "KioskMode"

.field public static TASK_MANAGER_PKGNAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    const-string v0, "com.sec.android.app.controlpanel"

    sput-object v0, Landroid/sec/enterprise/kioskmode/KioskMode;->CONTROL_PANEL_PKGNAME:Ljava/lang/String;

    .line 58
    const-string v0, "com.sec.android.app.taskmanager"

    sput-object v0, Landroid/sec/enterprise/kioskmode/KioskMode;->TASK_MANAGER_PKGNAME:Ljava/lang/String;

    .line 61
    const-string v0, "com.sec.minimode.taskcloser"

    sput-object v0, Landroid/sec/enterprise/kioskmode/KioskMode;->MINI_TASK_MANAGER_PKGNAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isHardwareKeyAllowed(IZ)Z
    .registers 7
    .param p1, "hwKeyId"    # I
    .param p2, "showMsg"    # Z

    .prologue
    .line 112
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 113
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_17

    .line 114
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/sec/enterprise/IEDMProxy;->isHardwareKeyAllowed(IZ)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_f

    move-result v2

    .line 119
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_e
    return v2

    .line 116
    :catch_f
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KioskMode"

    const-string v3, "PXY-isHardwareKeyAllowed returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_17
    const/4 v2, 0x1

    goto :goto_e
.end method

.method public isTaskManagerAllowed(Z)Z
    .registers 6
    .param p1, "showMsg"    # Z

    .prologue
    .line 70
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 71
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_17

    .line 72
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/sec/enterprise/IEDMProxy;->isTaskManagerAllowed(Z)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_f

    move-result v2

    .line 77
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_e
    return v2

    .line 74
    :catch_f
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KioskMode"

    const-string v3, "PXY-isTaskManagerAllowed returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_17
    const/4 v2, 0x1

    goto :goto_e
.end method
