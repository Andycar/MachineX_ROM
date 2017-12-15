.class Landroid/graphics/drawable/VectorDrawable$VGroup;
.super Ljava/lang/Object;
.source "VectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/VectorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VGroup"
.end annotation


# instance fields
.field private mChangingConfigurations:I

.field final mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupName:Ljava/lang/String;

.field private final mLocalMatrix:Landroid/graphics/Matrix;

.field private mPivotX:F

.field private mPivotY:F

.field private mRotate:F

.field private mScaleX:F

.field private mScaleY:F

.field private final mStackedMatrix:Landroid/graphics/Matrix;

.field private mThemeAttrs:[I

.field private mTranslateX:F

.field private mTranslateY:F


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 1086
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1025
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mStackedMatrix:Landroid/graphics/Matrix;

    .line 1029
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    .line 1031
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mRotate:F

    .line 1032
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotX:F

    .line 1033
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotY:F

    .line 1034
    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mScaleX:F

    .line 1035
    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mScaleY:F

    .line 1036
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTranslateX:F

    .line 1037
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTranslateY:F

    .line 1041
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    .line 1044
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    .line 1087
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/VectorDrawable$VGroup;Landroid/util/ArrayMap;)V
    .registers 11
    .param p1, "copy"    # Landroid/graphics/drawable/VectorDrawable$VGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/VectorDrawable$VGroup;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "targetsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 1046
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1025
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mStackedMatrix:Landroid/graphics/Matrix;

    .line 1029
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    .line 1031
    iput v6, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mRotate:F

    .line 1032
    iput v6, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotX:F

    .line 1033
    iput v6, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotY:F

    .line 1034
    iput v7, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mScaleX:F

    .line 1035
    iput v7, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mScaleY:F

    .line 1036
    iput v6, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTranslateX:F

    .line 1037
    iput v6, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTranslateY:F

    .line 1041
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    .line 1044
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    .line 1047
    iget v5, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mRotate:F

    iput v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mRotate:F

    .line 1048
    iget v5, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotX:F

    iput v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotX:F

    .line 1049
    iget v5, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotY:F

    iput v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotY:F

    .line 1050
    iget v5, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mScaleX:F

    iput v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mScaleX:F

    .line 1051
    iget v5, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mScaleY:F

    iput v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mScaleY:F

    .line 1052
    iget v5, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTranslateX:F

    iput v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTranslateX:F

    .line 1053
    iget v5, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTranslateY:F

    iput v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTranslateY:F

    .line 1054
    iget-object v5, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mThemeAttrs:[I

    iput-object v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mThemeAttrs:[I

    .line 1055
    iget-object v5, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    iput-object v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    .line 1056
    iget v5, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChangingConfigurations:I

    iput v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChangingConfigurations:I

    .line 1057
    iget-object v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    if-eqz v5, :cond_5d

    .line 1058
    iget-object v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    invoke-virtual {p2, v5, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1061
    :cond_5d
    iget-object v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    iget-object v6, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1063
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    .line 1064
    .local v0, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_67
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_b4

    .line 1065
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1066
    .local v1, "copyChild":Ljava/lang/Object;
    instance-of v5, v1, Landroid/graphics/drawable/VectorDrawable$VGroup;

    if-eqz v5, :cond_85

    move-object v2, v1

    .line 1067
    check-cast v2, Landroid/graphics/drawable/VectorDrawable$VGroup;

    .line 1068
    .local v2, "copyGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    iget-object v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    new-instance v6, Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-direct {v6, v2, p2}, Landroid/graphics/drawable/VectorDrawable$VGroup;-><init>(Landroid/graphics/drawable/VectorDrawable$VGroup;Landroid/util/ArrayMap;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1064
    .end local v1    # "copyChild":Ljava/lang/Object;
    .end local v2    # "copyGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    :cond_82
    :goto_82
    add-int/lit8 v3, v3, 0x1

    goto :goto_67

    .line 1070
    .restart local v1    # "copyChild":Ljava/lang/Object;
    :cond_85
    const/4 v4, 0x0

    .line 1071
    .local v4, "newPath":Landroid/graphics/drawable/VectorDrawable$VPath;
    instance-of v5, v1, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    if-eqz v5, :cond_a0

    .line 1072
    new-instance v4, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    .end local v4    # "newPath":Landroid/graphics/drawable/VectorDrawable$VPath;
    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    .end local v1    # "copyChild":Ljava/lang/Object;
    invoke-direct {v4, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath;-><init>(Landroid/graphics/drawable/VectorDrawable$VFullPath;)V

    .line 1078
    .restart local v4    # "newPath":Landroid/graphics/drawable/VectorDrawable$VPath;
    :goto_91
    iget-object v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1079
    iget-object v5, v4, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathName:Ljava/lang/String;

    if-eqz v5, :cond_82

    .line 1080
    iget-object v5, v4, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathName:Ljava/lang/String;

    invoke-virtual {p2, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_82

    .line 1073
    .restart local v1    # "copyChild":Ljava/lang/Object;
    :cond_a0
    instance-of v5, v1, Landroid/graphics/drawable/VectorDrawable$VClipPath;

    if-eqz v5, :cond_ac

    .line 1074
    new-instance v4, Landroid/graphics/drawable/VectorDrawable$VClipPath;

    .end local v4    # "newPath":Landroid/graphics/drawable/VectorDrawable$VPath;
    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VClipPath;

    .end local v1    # "copyChild":Ljava/lang/Object;
    invoke-direct {v4, v1}, Landroid/graphics/drawable/VectorDrawable$VClipPath;-><init>(Landroid/graphics/drawable/VectorDrawable$VClipPath;)V

    .restart local v4    # "newPath":Landroid/graphics/drawable/VectorDrawable$VPath;
    goto :goto_91

    .line 1076
    .restart local v1    # "copyChild":Ljava/lang/Object;
    :cond_ac
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Unknown object in the tree!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1084
    .end local v1    # "copyChild":Ljava/lang/Object;
    .end local v4    # "newPath":Landroid/graphics/drawable/VectorDrawable$VPath;
    :cond_b4
    return-void
.end method

.method static synthetic access$100(Landroid/graphics/drawable/VectorDrawable$VGroup;)I
    .registers 2
    .param p0, "x0"    # Landroid/graphics/drawable/VectorDrawable$VGroup;

    .prologue
    .line 1022
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChangingConfigurations:I

    return v0
.end method

.method static synthetic access$200(Landroid/graphics/drawable/VectorDrawable$VGroup;)F
    .registers 2
    .param p0, "x0"    # Landroid/graphics/drawable/VectorDrawable$VGroup;

    .prologue
    .line 1022
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mRotate:F

    return v0
.end method

.method static synthetic access$600(Landroid/graphics/drawable/VectorDrawable$VGroup;)Landroid/graphics/Matrix;
    .registers 2
    .param p0, "x0"    # Landroid/graphics/drawable/VectorDrawable$VGroup;

    .prologue
    .line 1022
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mStackedMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$700(Landroid/graphics/drawable/VectorDrawable$VGroup;)Landroid/graphics/Matrix;
    .registers 2
    .param p0, "x0"    # Landroid/graphics/drawable/VectorDrawable$VGroup;

    .prologue
    .line 1022
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method private updateLocalMatrix()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1144
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 1145
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotX:F

    neg-float v1, v1

    iget v2, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotY:F

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1146
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mScaleX:F

    iget v2, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mScaleY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1147
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mRotate:F

    invoke-virtual {v0, v1, v3, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1148
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTranslateX:F

    iget v2, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotX:F

    add-float/2addr v1, v2

    iget v2, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTranslateY:F

    iget v3, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotY:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1149
    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .registers 5
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    .line 1106
    iget v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChangingConfigurations:I

    .line 1109
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mThemeAttrs:[I

    .line 1111
    const/4 v1, 0x5

    iget v2, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mRotate:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mRotate:F

    .line 1112
    const/4 v1, 0x1

    iget v2, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotX:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotX:F

    .line 1113
    const/4 v1, 0x2

    iget v2, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotY:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotY:F

    .line 1114
    const/4 v1, 0x3

    iget v2, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mScaleX:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mScaleX:F

    .line 1115
    const/4 v1, 0x4

    iget v2, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mScaleY:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mScaleY:F

    .line 1116
    const/4 v1, 0x6

    iget v2, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTranslateX:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTranslateX:F

    .line 1117
    const/4 v1, 0x7

    iget v2, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTranslateY:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTranslateY:F

    .line 1119
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1120
    .local v0, "groupName":Ljava/lang/String;
    if-eqz v0, :cond_57

    .line 1121
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    .line 1124
    :cond_57
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->updateLocalMatrix()V

    .line 1125
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 5
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 1132
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mThemeAttrs:[I

    if-nez v1, :cond_5

    .line 1139
    :goto_4
    return-void

    .line 1136
    :cond_5
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mThemeAttrs:[I

    sget-object v2, Lcom/android/internal/R$styleable;->VectorDrawableGroup:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1137
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 1138
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_4
.end method

.method public canApplyTheme()Z
    .registers 2

    .prologue
    .line 1128
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mThemeAttrs:[I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public getGroupName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1090
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalMatrix()Landroid/graphics/Matrix;
    .registers 2

    .prologue
    .line 1094
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getPivotX()F
    .registers 2

    .prologue
    .line 1167
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotX:F

    return v0
.end method

.method public getPivotY()F
    .registers 2

    .prologue
    .line 1180
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotY:F

    return v0
.end method

.method public getRotation()F
    .registers 2

    .prologue
    .line 1154
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mRotate:F

    return v0
.end method

.method public getScaleX()F
    .registers 2

    .prologue
    .line 1193
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mScaleX:F

    return v0
.end method

.method public getScaleY()F
    .registers 2

    .prologue
    .line 1206
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mScaleY:F

    return v0
.end method

.method public getTranslateX()F
    .registers 2

    .prologue
    .line 1219
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTranslateX:F

    return v0
.end method

.method public getTranslateY()F
    .registers 2

    .prologue
    .line 1232
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTranslateY:F

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 6
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 1098
    sget-object v1, Lcom/android/internal/R$styleable;->VectorDrawableGroup:[I

    invoke-static {p1, p3, p2, v1}, Landroid/graphics/drawable/Drawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1100
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 1101
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1102
    return-void
.end method

.method public setPivotX(F)V
    .registers 3
    .param p1, "pivotX"    # F

    .prologue
    .line 1172
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotX:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_b

    .line 1173
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotX:F

    .line 1174
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->updateLocalMatrix()V

    .line 1176
    :cond_b
    return-void
.end method

.method public setPivotY(F)V
    .registers 3
    .param p1, "pivotY"    # F

    .prologue
    .line 1185
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotY:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_b

    .line 1186
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotY:F

    .line 1187
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->updateLocalMatrix()V

    .line 1189
    :cond_b
    return-void
.end method

.method public setRotation(F)V
    .registers 3
    .param p1, "rotation"    # F

    .prologue
    .line 1159
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mRotate:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_b

    .line 1160
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mRotate:F

    .line 1161
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->updateLocalMatrix()V

    .line 1163
    :cond_b
    return-void
.end method

.method public setScaleX(F)V
    .registers 3
    .param p1, "scaleX"    # F

    .prologue
    .line 1198
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mScaleX:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_b

    .line 1199
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mScaleX:F

    .line 1200
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->updateLocalMatrix()V

    .line 1202
    :cond_b
    return-void
.end method

.method public setScaleY(F)V
    .registers 3
    .param p1, "scaleY"    # F

    .prologue
    .line 1211
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mScaleY:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_b

    .line 1212
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mScaleY:F

    .line 1213
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->updateLocalMatrix()V

    .line 1215
    :cond_b
    return-void
.end method

.method public setTranslateX(F)V
    .registers 3
    .param p1, "translateX"    # F

    .prologue
    .line 1224
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTranslateX:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_b

    .line 1225
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTranslateX:F

    .line 1226
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->updateLocalMatrix()V

    .line 1228
    :cond_b
    return-void
.end method

.method public setTranslateY(F)V
    .registers 3
    .param p1, "translateY"    # F

    .prologue
    .line 1237
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTranslateY:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_b

    .line 1238
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTranslateY:F

    .line 1239
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->updateLocalMatrix()V

    .line 1241
    :cond_b
    return-void
.end method
