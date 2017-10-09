.class Lcom/android/settings/RadioPreference$1;
.super Ljava/lang/Object;
.source "RadioPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RadioPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RadioPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioPreference;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/settings/RadioPreference$1;->this$0:Lcom/android/settings/RadioPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/RadioPreference$1;->this$0:Lcom/android/settings/RadioPreference;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/RadioPreference;->access$000(Lcom/android/settings/RadioPreference;Ljava/lang/Object;)Z

    .line 46
    return-void
.end method
