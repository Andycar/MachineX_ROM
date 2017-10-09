.class Lcom/android/settings/personalpage/PersonalPageSettings$1;
.super Landroid/database/ContentObserver;
.source "PersonalPageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/personalpage/PersonalPageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/personalpage/PersonalPageSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/personalpage/PersonalPageSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/settings/personalpage/PersonalPageSettings$1;->this$0:Lcom/android/settings/personalpage/PersonalPageSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 129
    const-string v0, "PersonalPageSettings"

    const-string v1, "onChange() PersonalPage_SWITCH_CHANGED"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings$1;->this$0:Lcom/android/settings/personalpage/PersonalPageSettings;

    invoke-virtual {v0}, Lcom/android/settings/personalpage/PersonalPageSettings;->updatePersonalPagepage()V

    .line 131
    return-void
.end method
