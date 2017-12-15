.class Landroid/widget/RemoteViews$SetLaunchPendingIntent;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetLaunchPendingIntent"
.end annotation


# static fields
.field public static final TAG:I = 0x14


# instance fields
.field pendingIntent:Landroid/app/PendingIntent;

.field final synthetic this$0:Landroid/widget/RemoteViews;

.field viewId:I


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;)V
    .registers 5
    .param p2, "id"    # I
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 3321
    iput-object p1, p0, Landroid/widget/RemoteViews$SetLaunchPendingIntent;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 3322
    iput p2, p0, Landroid/widget/RemoteViews$SetLaunchPendingIntent;->viewId:I

    .line 3323
    iput-object p3, p0, Landroid/widget/RemoteViews$SetLaunchPendingIntent;->pendingIntent:Landroid/app/PendingIntent;

    .line 3324
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .registers 4
    .param p2, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 3326
    iput-object p1, p0, Landroid/widget/RemoteViews$SetLaunchPendingIntent;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 3327
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetLaunchPendingIntent;->viewId:I

    .line 3328
    invoke-static {p2}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$SetLaunchPendingIntent;->pendingIntent:Landroid/app/PendingIntent;

    .line 3329
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .registers 7
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 3339
    iget v2, p0, Landroid/widget/RemoteViews$SetLaunchPendingIntent;->viewId:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3340
    .local v1, "target":Landroid/view/View;
    if-eqz v1, :cond_14

    iget-object v2, p0, Landroid/widget/RemoteViews$SetLaunchPendingIntent;->pendingIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_14

    .line 3341
    new-instance v0, Landroid/widget/RemoteViews$SetLaunchPendingIntent$1;

    invoke-direct {v0, p0, p3}, Landroid/widget/RemoteViews$SetLaunchPendingIntent$1;-><init>(Landroid/widget/RemoteViews$SetLaunchPendingIntent;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 3383
    .local v0, "listener":Landroid/view/View$OnClickListener;
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3385
    .end local v0    # "listener":Landroid/view/View$OnClickListener;
    :cond_14
    return-void
.end method

.method public getActionName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3388
    const-string v0, "SetLaunchPendingIntent"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 3332
    const/16 v0, 0x14

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3333
    iget v0, p0, Landroid/widget/RemoteViews$SetLaunchPendingIntent;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3334
    iget-object v0, p0, Landroid/widget/RemoteViews$SetLaunchPendingIntent;->pendingIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3335
    return-void
.end method
