.class Landroid/provider/SearchIndexablesContract$BaseColumns;
.super Ljava/lang/Object;
.source "SearchIndexablesContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/SearchIndexablesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaseColumns"
.end annotation


# static fields
.field public static final COLUMN_CLASS_NAME:Ljava/lang/String; = "className"

.field public static final COLUMN_ICON_RESID:Ljava/lang/String; = "iconResId"

.field public static final COLUMN_INTENT_ACTION:Ljava/lang/String; = "intentAction"

.field public static final COLUMN_INTENT_TARGET_CLASS:Ljava/lang/String; = "intentTargetClass"

.field public static final COLUMN_INTENT_TARGET_PACKAGE:Ljava/lang/String; = "intentTargetPackage"

.field public static final COLUMN_RANK:Ljava/lang/String; = "rank"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    return-void
.end method

.method synthetic constructor <init>(Landroid/provider/SearchIndexablesContract$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/provider/SearchIndexablesContract$1;

    .prologue
    .line 237
    invoke-direct {p0}, Landroid/provider/SearchIndexablesContract$BaseColumns;-><init>()V

    return-void
.end method
