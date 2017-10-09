.class Lcom/sec/android/app/SecSetupWizard/KorV3Activity$1;
.super Ljava/lang/Object;
.source "KorV3Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/SecSetupWizard/KorV3Activity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/SecSetupWizard/KorV3Activity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/SecSetupWizard/KorV3Activity;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/sec/android/app/SecSetupWizard/KorV3Activity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/KorV3Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x2

    .line 51
    iget-object v4, p0, Lcom/sec/android/app/SecSetupWizard/KorV3Activity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/KorV3Activity;

    invoke-virtual {v4}, Lcom/sec/android/app/SecSetupWizard/KorV3Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 52
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 54
    .local v3, "startV3M":Landroid/content/Intent;
    :try_start_0
    const-string v4, "com.android.ahnmobilesecurity"

    const/16 v5, 0x80

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 55
    iget-object v4, p0, Lcom/sec/android/app/SecSetupWizard/KorV3Activity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/KorV3Activity;

    const/4 v5, 0x1

    iput v5, v4, Lcom/sec/android/app/SecSetupWizard/KorV3Activity;->installKey:I

    .line 56
    const-string v4, "com.android.ahnmobilesecurity"

    const-string v5, "com.ahnlab.msecurity2.v3mavmain.V3MAVMainActivity"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/SecSetupWizard/KorV3Activity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/KorV3Activity;

    iget v4, v4, Lcom/sec/android/app/SecSetupWizard/KorV3Activity;->installKey:I

    if-eq v4, v7, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/SecSetupWizard/KorV3Activity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/KorV3Activity;

    iget v4, v4, Lcom/sec/android/app/SecSetupWizard/KorV3Activity;->installKey:I

    if-ne v4, v6, :cond_1

    .line 73
    :cond_0
    const-string v4, "CTYPE"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 74
    iget-object v4, p0, Lcom/sec/android/app/SecSetupWizard/KorV3Activity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/KorV3Activity;

    const/16 v5, 0x3f2

    invoke-virtual {v4, v3, v5}, Lcom/sec/android/app/SecSetupWizard/KorV3Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 75
    const-string v4, "Setup_V3 Mobile"

    const-string v5, "Start V3 Mobile"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_1
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    const-string v4, "com.ahnlab.v3mobilestd"

    const/16 v5, 0x80

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 62
    iget-object v4, p0, Lcom/sec/android/app/SecSetupWizard/KorV3Activity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/KorV3Activity;

    const/4 v5, 0x2

    iput v5, v4, Lcom/sec/android/app/SecSetupWizard/KorV3Activity;->installKey:I

    .line 63
    const-string v4, "com.ahnlab.v3mobilestd"

    const-string v5, "com.ahnlab.msecurity2.v3mavmain.V3MAVMainActivity"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 64
    :catch_1
    move-exception v1

    .line 66
    .local v1, "e2":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v4, p0, Lcom/sec/android/app/SecSetupWizard/KorV3Activity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/KorV3Activity;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Lcom/sec/android/app/SecSetupWizard/KorV3Activity;->setResult(I)V

    .line 67
    const-string v4, "Setup_V3 Mobile"

    const-string v5, "Skip V3 Mobile"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v4, p0, Lcom/sec/android/app/SecSetupWizard/KorV3Activity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/KorV3Activity;

    invoke-virtual {v4}, Lcom/sec/android/app/SecSetupWizard/KorV3Activity;->finish()V

    goto :goto_0
.end method
