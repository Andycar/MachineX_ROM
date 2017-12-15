.class final Lcom/android/internal/app/ResolverActivity$RemoteShareListInfo;
.super Ljava/lang/Object;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RemoteShareListInfo"
.end annotation


# instance fields
.field displayIcon:Landroid/graphics/drawable/Drawable;

.field displayLabel:Ljava/lang/CharSequence;

.field extraInfo:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;)V
    .registers 4
    .param p2, "pInitText"    # Ljava/lang/CharSequence;

    .prologue
    .line 1993
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareListInfo;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1994
    iput-object p2, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareListInfo;->displayLabel:Ljava/lang/CharSequence;

    .line 1995
    iput-object p2, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareListInfo;->extraInfo:Ljava/lang/CharSequence;

    .line 1996
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareListInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    .line 1997
    return-void
.end method

.method constructor <init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .registers 5
    .param p2, "pLabel"    # Ljava/lang/CharSequence;
    .param p3, "pIcon"    # Landroid/graphics/drawable/Drawable;
    .param p4, "pExtraInfo"    # Ljava/lang/CharSequence;

    .prologue
    .line 1999
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareListInfo;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2000
    iput-object p2, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareListInfo;->displayLabel:Ljava/lang/CharSequence;

    .line 2001
    iput-object p3, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareListInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    .line 2002
    iput-object p4, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareListInfo;->extraInfo:Ljava/lang/CharSequence;

    .line 2003
    return-void
.end method
