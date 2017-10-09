.class Lcom/android/keyguard/KeyguardMultiUserAvatar;
.super Landroid/widget/FrameLayout;
.source "KeyguardMultiUserAvatar.java"


# static fields
.field private static final ACTIVE_ALPHA:F = 1.0f

.field private static final ACTIVE_SCALE:F = 1.5f

.field private static final ACTIVE_TEXT_ALPHA:F = 0.0f

.field private static final DEBUG:Z = true

.field private static final INACTIVE_ALPHA:F = 1.0f

.field private static final INACTIVE_TEXT_ALPHA:F = 0.5f

.field private static final SWITCH_ANIMATION_DURATION:I = 0x96

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActive:Z

.field private final mActiveAlpha:F

.field private final mActiveScale:F

.field private final mActiveTextAlpha:F

.field private final mFrameColor:I

.field private final mFrameShadowColor:I

.field private mFramed:Lcom/android/keyguard/KeyguardCircleFramedDrawable;

.field private final mHighlightColor:I

.field private final mIconSize:F

.field private final mInactiveAlpha:F

.field private final mInactiveTextAlpha:F

.field private mInit:Z

.field private mPressLock:Z

.field private final mShadowRadius:F

.field private final mStroke:F

.field private final mTextColor:I

.field private mTouched:Z

.field private mUserImage:Landroid/widget/ImageView;

.field private mUserInfo:Landroid/content/pm/UserInfo;

.field private mUserManager:Landroid/os/UserManager;

.field private mUserName:Landroid/widget/TextView;

.field private mUserSelector:Lcom/android/keyguard/KeyguardMultiUserSelectorView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/android/keyguard/KeyguardMultiUserAvatar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardMultiUserAvatar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardMultiUserAvatar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 92
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mInit:Z

    .line 94
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 95
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/android/keyguard/R$color;->keyguard_avatar_nick_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mTextColor:I

    .line 96
    sget v1, Lcom/android/keyguard/R$dimen;->keyguard_avatar_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mIconSize:F

    .line 97
    sget v1, Lcom/android/keyguard/R$dimen;->keyguard_avatar_frame_stroke_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mStroke:F

    .line 98
    sget v1, Lcom/android/keyguard/R$dimen;->keyguard_avatar_frame_shadow_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mShadowRadius:F

    .line 99
    sget v1, Lcom/android/keyguard/R$color;->keyguard_avatar_frame_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFrameColor:I

    .line 100
    sget v1, Lcom/android/keyguard/R$color;->keyguard_avatar_frame_shadow_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFrameShadowColor:I

    .line 101
    sget v1, Lcom/android/keyguard/R$color;->keyguard_avatar_frame_pressed_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mHighlightColor:I

    .line 102
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mActiveTextAlpha:F

    .line 103
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mInactiveTextAlpha:F

    .line 104
    const/high16 v1, 0x3fc00000    # 1.5f

    iput v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mActiveScale:F

    .line 105
    iput v2, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mActiveAlpha:F

    .line 106
    iput v2, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mInactiveAlpha:F

    .line 107
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mContext:Landroid/content/Context;

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserManager:Landroid/os/UserManager;

    .line 109
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mTouched:Z

    .line 111
    const/4 v1, 0x0

    invoke-virtual {p0, v3, v1}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->setLayerType(ILandroid/graphics/Paint;)V

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardMultiUserAvatar;)Lcom/android/keyguard/KeyguardCircleFramedDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardMultiUserAvatar;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/keyguard/KeyguardCircleFramedDrawable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardMultiUserAvatar;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardMultiUserAvatar;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardMultiUserAvatar;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardMultiUserAvatar;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserName:Landroid/widget/TextView;

    return-object v0
.end method

.method public static fromXml(ILandroid/content/Context;Lcom/android/keyguard/KeyguardMultiUserSelectorView;Landroid/content/pm/UserInfo;)Lcom/android/keyguard/KeyguardMultiUserAvatar;
    .locals 3
    .param p0, "resId"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userSelector"    # Lcom/android/keyguard/KeyguardMultiUserSelectorView;
    .param p3, "info"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 76
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardMultiUserAvatar;

    .line 79
    .local v0, "icon":Lcom/android/keyguard/KeyguardMultiUserAvatar;
    invoke-virtual {v0, p3, p2}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->init(Landroid/content/pm/UserInfo;Lcom/android/keyguard/KeyguardMultiUserSelectorView;)V

    .line 80
    return-object v0
.end method


# virtual methods
.method public getUserInfo()Landroid/content/pm/UserInfo;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserInfo:Landroid/content/pm/UserInfo;

    return-object v0
.end method

.method public init(Landroid/content/pm/UserInfo;Lcom/android/keyguard/KeyguardMultiUserSelectorView;)V
    .locals 9
    .param p1, "user"    # Landroid/content/pm/UserInfo;
    .param p2, "userSelector"    # Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserInfo:Landroid/content/pm/UserInfo;

    .line 120
    iput-object p2, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserSelector:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    .line 122
    sget v0, Lcom/android/keyguard/R$id;->keyguard_user_avatar:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserImage:Landroid/widget/ImageView;

    .line 123
    sget v0, Lcom/android/keyguard/R$id;->keyguard_user_name:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserName:Landroid/widget/TextView;

    .line 125
    invoke-static {}, Lcom/android/keyguard/MultiUserAvatarCache;->getInstance()Lcom/android/keyguard/MultiUserAvatarCache;

    move-result-object v0

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v2}, Lcom/android/keyguard/MultiUserAvatarCache;->get(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/keyguard/KeyguardCircleFramedDrawable;

    .line 129
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/keyguard/KeyguardCircleFramedDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/keyguard/KeyguardCircleFramedDrawable;

    iget v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mIconSize:F

    iget v2, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFrameColor:I

    iget v3, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mStroke:F

    iget v4, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFrameShadowColor:I

    iget v5, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mShadowRadius:F

    iget v6, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mHighlightColor:I

    invoke-virtual/range {v0 .. v6}, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->verifyParams(FIFIFI)Z

    move-result v0

    if-nez v0, :cond_2

    .line 132
    :cond_0
    const/4 v1, 0x0

    .line 134
    .local v1, "icon":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserManager:Landroid/os/UserManager;

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 139
    :goto_0
    if-nez v1, :cond_1

    .line 140
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1080447

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 144
    :cond_1
    new-instance v0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;

    iget v2, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mIconSize:F

    float-to-int v2, v2

    iget v3, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFrameColor:I

    iget v4, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mStroke:F

    iget v5, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFrameShadowColor:I

    iget v6, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mShadowRadius:F

    iget v7, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mHighlightColor:I

    invoke-direct/range {v0 .. v7}, Lcom/android/keyguard/KeyguardCircleFramedDrawable;-><init>(Landroid/graphics/Bitmap;IIFIFI)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/keyguard/KeyguardCircleFramedDrawable;

    .line 146
    invoke-static {}, Lcom/android/keyguard/MultiUserAvatarCache;->getInstance()Lcom/android/keyguard/MultiUserAvatarCache;

    move-result-object v0

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    iget-object v3, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/keyguard/KeyguardCircleFramedDrawable;

    invoke-virtual {v0, v2, v3}, Lcom/android/keyguard/MultiUserAvatarCache;->put(ILandroid/graphics/drawable/Drawable;)V

    .line 149
    .end local v1    # "icon":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/keyguard/KeyguardCircleFramedDrawable;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->reset()V

    .line 151
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/keyguard/KeyguardCircleFramedDrawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 152
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserInfo:Landroid/content/pm/UserInfo;

    iget-object v2, v2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserSelector:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mInit:Z

    .line 155
    return-void

    .line 135
    .restart local v1    # "icon":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v8

    .line 136
    .local v8, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to get profile icon "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public lockPressed(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 238
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mPressLock:Z

    .line 239
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->setPressed(Z)V

    .line 240
    return-void
.end method

.method protected rewriteIconPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 115
    return-object p1
.end method

.method public setActive(ZZLjava/lang/Runnable;)V
    .locals 7
    .param p1, "active"    # Z
    .param p2, "animate"    # Z
    .param p3, "onComplete"    # Ljava/lang/Runnable;

    .prologue
    .line 158
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mActive:Z

    if-ne v1, p1, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mInit:Z

    if-eqz v1, :cond_1

    .line 159
    :cond_0
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mActive:Z

    .line 161
    if-eqz p1, :cond_2

    .line 162
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardLinearLayout;

    .line 163
    .local v0, "parent":Lcom/android/keyguard/KeyguardLinearLayout;
    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardLinearLayout;->setTopChild(Landroid/view/View;)V

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/keyguard/R$string;->user_switched:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, ""

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 171
    .end local v0    # "parent":Lcom/android/keyguard/KeyguardLinearLayout;
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mActive:Z

    const/16 v2, 0x96

    invoke-virtual {p0, v1, p2, v2, p3}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->updateVisualsForActive(ZZILjava/lang/Runnable;)V

    .line 172
    return-void

    .line 168
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setPressed(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mPressLock:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mPressLock:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setPressed(Z)V

    .line 232
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/keyguard/KeyguardCircleFramedDrawable;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->setPressed(Z)V

    .line 233
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_0
.end method

.method updateVisualsForActive(ZZILjava/lang/Runnable;)V
    .locals 11
    .param p1, "active"    # Z
    .param p2, "animate"    # Z
    .param p3, "duration"    # I
    .param p4, "onComplete"    # Ljava/lang/Runnable;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v10, 0xff

    const/high16 v1, 0x437f0000    # 255.0f

    .line 176
    if-eqz p1, :cond_1

    iget v5, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mActiveAlpha:F

    .line 177
    .local v5, "finalAlpha":F
    :goto_0
    if-eqz p1, :cond_2

    iget v4, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mInactiveAlpha:F

    .line 178
    .local v4, "initAlpha":F
    :goto_1
    if-eqz p1, :cond_3

    .line 179
    .local v3, "finalScale":F
    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/keyguard/KeyguardCircleFramedDrawable;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->getScale()F

    move-result v2

    .line 180
    .local v2, "initScale":F
    if-eqz p1, :cond_4

    iget v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mActiveTextAlpha:F

    mul-float/2addr v0, v1

    float-to-int v7, v0

    .line 182
    .local v7, "finalTextAlpha":I
    :goto_3
    if-eqz p1, :cond_5

    iget v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mInactiveTextAlpha:F

    mul-float/2addr v0, v1

    float-to-int v6, v0

    .line 184
    .local v6, "initTextAlpha":I
    :goto_4
    iget v8, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mTextColor:I

    .line 185
    .local v8, "textColor":I
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserName:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 187
    if-eqz p2, :cond_6

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mTouched:Z

    if-eqz v0, :cond_6

    .line 188
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v9

    .line 189
    .local v9, "va":Landroid/animation/ValueAnimator;
    new-instance v0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;-><init>(Lcom/android/keyguard/KeyguardMultiUserAvatar;FFFFII)V

    invoke-virtual {v9, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 202
    new-instance v0, Lcom/android/keyguard/KeyguardMultiUserAvatar$2;

    invoke-direct {v0, p0, p4}, Lcom/android/keyguard/KeyguardMultiUserAvatar$2;-><init>(Lcom/android/keyguard/KeyguardMultiUserAvatar;Ljava/lang/Runnable;)V

    invoke-virtual {v9, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 210
    int-to-long v0, p3

    invoke-virtual {v9, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 211
    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->start()V

    .line 221
    .end local v9    # "va":Landroid/animation/ValueAnimator;
    :cond_0
    :goto_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mTouched:Z

    .line 222
    return-void

    .line 176
    .end local v2    # "initScale":F
    .end local v3    # "finalScale":F
    .end local v4    # "initAlpha":F
    .end local v5    # "finalAlpha":F
    .end local v6    # "initTextAlpha":I
    .end local v7    # "finalTextAlpha":I
    .end local v8    # "textColor":I
    :cond_1
    iget v5, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mInactiveAlpha:F

    goto :goto_0

    .line 177
    .restart local v5    # "finalAlpha":F
    :cond_2
    iget v4, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mActiveAlpha:F

    goto :goto_1

    .line 178
    .restart local v4    # "initAlpha":F
    :cond_3
    iget v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mActiveScale:F

    div-float/2addr v3, v0

    goto :goto_2

    .line 180
    .restart local v2    # "initScale":F
    .restart local v3    # "finalScale":F
    :cond_4
    iget v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mInactiveTextAlpha:F

    mul-float/2addr v0, v1

    float-to-int v7, v0

    goto :goto_3

    .line 182
    .restart local v7    # "finalTextAlpha":I
    :cond_5
    iget v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mActiveTextAlpha:F

    mul-float/2addr v0, v1

    float-to-int v6, v0

    goto :goto_4

    .line 213
    .restart local v6    # "initTextAlpha":I
    .restart local v8    # "textColor":I
    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/keyguard/KeyguardCircleFramedDrawable;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->setScale(F)V

    .line 214
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 215
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserName:Landroid/widget/TextView;

    invoke-static {v7, v10, v10, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 216
    if-eqz p4, :cond_0

    .line 217
    invoke-virtual {p0, p4}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    .line 188
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
