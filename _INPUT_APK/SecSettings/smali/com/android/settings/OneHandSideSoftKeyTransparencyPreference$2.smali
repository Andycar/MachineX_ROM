.class Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference$2;
.super Landroid/database/ContentObserver;
.source "OneHandSideSoftKeyTransparencyPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference$2;->this$0:Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference$2;->this$0:Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;

    invoke-static {v0}, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->access$100(Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;)V

    .line 60
    return-void
.end method
