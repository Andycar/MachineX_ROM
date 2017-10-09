.class Lcom/android/settings/ClockMyprofileMenu$3;
.super Ljava/lang/Object;
.source "ClockMyprofileMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ClockMyprofileMenu;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ClockMyprofileMenu;


# direct methods
.method constructor <init>(Lcom/android/settings/ClockMyprofileMenu;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/settings/ClockMyprofileMenu$3;->this$0:Lcom/android/settings/ClockMyprofileMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/settings/ClockMyprofileMenu$3;->this$0:Lcom/android/settings/ClockMyprofileMenu;

    invoke-virtual {v0}, Lcom/android/settings/ClockMyprofileMenu;->finish()V

    .line 174
    return-void
.end method
