.class public final Lcom/android/settings/applications/ManageNotification$ViewHolder;
.super Ljava/lang/Object;
.source "ManageNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ManageNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewHolder"
.end annotation


# instance fields
.field public img:Landroid/widget/ImageView;

.field public summary:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/settings/applications/ManageNotification;

.field public title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/ManageNotification;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/settings/applications/ManageNotification$ViewHolder;->this$0:Lcom/android/settings/applications/ManageNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
