.class Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;
.super Ljava/lang/Object;
.source "ThemeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/epm/overlay/ThemeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MasterDetails"
.end annotation


# instance fields
.field mCategory:Ljava/lang/String;

.field mDesc:Ljava/lang/String;

.field mStatus:Z

.field mTitle:Ljava/lang/String;

.field mVersion:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 6
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "category"    # Ljava/lang/String;
    .param p4, "status"    # Z
    .param p5, "version"    # Ljava/lang/String;

    .prologue
    .line 928
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 929
    iput-object p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;->mTitle:Ljava/lang/String;

    .line 930
    iput-object p2, p0, Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;->mDesc:Ljava/lang/String;

    .line 931
    iput-object p3, p0, Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;->mCategory:Ljava/lang/String;

    .line 932
    iput-boolean p4, p0, Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;->mStatus:Z

    .line 933
    iput-object p5, p0, Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;->mVersion:Ljava/lang/String;

    .line 934
    return-void
.end method
