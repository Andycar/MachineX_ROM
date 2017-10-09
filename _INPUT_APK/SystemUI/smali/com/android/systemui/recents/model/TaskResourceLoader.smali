.class Lcom/android/systemui/recents/model/TaskResourceLoader;
.super Ljava/lang/Object;
.source "RecentsTaskLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field mApplicationIconCache:Lcom/android/systemui/recents/model/DrawableLruCache;

.field mCancelled:Z

.field mContext:Landroid/content/Context;

.field mDefaultApplicationIcon:Landroid/graphics/drawable/BitmapDrawable;

.field mDefaultThumbnail:Landroid/graphics/Bitmap;

.field mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

.field mLoadThread:Landroid/os/HandlerThread;

.field mLoadThreadHandler:Landroid/os/Handler;

.field mMainThreadHandler:Landroid/os/Handler;

.field mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

.field mThumbnailCache:Lcom/android/systemui/recents/model/BitmapLruCache;

.field mWaitingOnLoadQueue:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/model/TaskResourceLoadQueue;Lcom/android/systemui/recents/model/DrawableLruCache;Lcom/android/systemui/recents/model/BitmapLruCache;Landroid/graphics/Bitmap;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 3
    .param p1, "loadQueue"    # Lcom/android/systemui/recents/model/TaskResourceLoadQueue;
    .param p2, "applicationIconCache"    # Lcom/android/systemui/recents/model/DrawableLruCache;
    .param p3, "thumbnailCache"    # Lcom/android/systemui/recents/model/BitmapLruCache;
    .param p4, "defaultThumbnail"    # Landroid/graphics/Bitmap;
    .param p5, "defaultApplicationIcon"    # Landroid/graphics/drawable/BitmapDrawable;

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    .line 134
    iput-object p2, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mApplicationIconCache:Lcom/android/systemui/recents/model/DrawableLruCache;

    .line 135
    iput-object p3, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/BitmapLruCache;

    .line 136
    iput-object p4, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    .line 137
    iput-object p5, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mDefaultApplicationIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 138
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mMainThreadHandler:Landroid/os/Handler;

    .line 139
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Recents-TaskResourceLoader"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mLoadThread:Landroid/os/HandlerThread;

    .line 141
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mLoadThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 142
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mLoadThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mLoadThreadHandler:Landroid/os/Handler;

    .line 143
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mLoadThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 144
    return-void
.end method


# virtual methods
.method getTaskDescriptionIcon(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/android/systemui/recents/misc/SystemServicesProxy;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "taskKey"    # Lcom/android/systemui/recents/model/Task$TaskKey;
    .param p2, "iconBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "iconFilename"    # Ljava/lang/String;
    .param p4, "ssp"    # Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .param p5, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 269
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 272
    .local v0, "tdIcon":Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v0, :cond_1

    .line 273
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget v2, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p4, v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedIcon(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 275
    :goto_1
    return-object v1

    .line 269
    .end local v0    # "tdIcon":Landroid/graphics/Bitmap;
    :cond_0
    invoke-static {p3}, Landroid/app/ActivityManager$TaskDescription;->loadTaskDescriptionIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 275
    .restart local v0    # "tdIcon":Landroid/graphics/Bitmap;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public run()V
    .locals 14

    .prologue
    .line 172
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mCancelled:Z

    if-eqz v0, :cond_1

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mContext:Landroid/content/Context;

    .line 177
    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mLoadThread:Landroid/os/HandlerThread;

    monitor-enter v1

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mLoadThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    :goto_1
    :try_start_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 180
    :catch_0
    move-exception v8

    .line 181
    .local v8, "ie":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 185
    .end local v8    # "ie":Ljava/lang/InterruptedException;
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .line 188
    .local v4, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;->nextTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v12

    .line 189
    .local v12, "t":Lcom/android/systemui/recents/model/Task;
    if-eqz v12, :cond_6

    .line 190
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mApplicationIconCache:Lcom/android/systemui/recents/model/DrawableLruCache;

    iget-object v1, v12, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/DrawableLruCache;->get(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/Drawable;

    .line 191
    .local v6, "cachedIcon":Landroid/graphics/drawable/Drawable;
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/BitmapLruCache;

    iget-object v1, v12, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/BitmapLruCache;->get(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    .line 194
    .local v7, "cachedThumbnail":Landroid/graphics/Bitmap;
    if-nez v6, :cond_4

    .line 195
    iget-object v1, v12, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v2, v12, Lcom/android/systemui/recents/model/Task;->icon:Landroid/graphics/Bitmap;

    iget-object v3, v12, Lcom/android/systemui/recents/model/Task;->iconFilename:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/model/TaskResourceLoader;->getTaskDescriptionIcon(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/android/systemui/recents/misc/SystemServicesProxy;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 198
    if-nez v6, :cond_2

    .line 199
    iget-object v0, v12, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iget-object v1, v12, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v4, v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v9

    .line 201
    .local v9, "info":Landroid/content/pm/ActivityInfo;
    if-eqz v9, :cond_2

    .line 202
    iget-object v0, v12, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v4, v9, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getActivityIcon(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 206
    .end local v9    # "info":Landroid/content/pm/ActivityInfo;
    :cond_2
    if-nez v6, :cond_3

    .line 207
    iget-object v6, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mDefaultApplicationIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 212
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mApplicationIconCache:Lcom/android/systemui/recents/model/DrawableLruCache;

    iget-object v1, v12, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1, v6}, Lcom/android/systemui/recents/model/DrawableLruCache;->put(Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    .line 215
    :cond_4
    if-nez v7, :cond_5

    .line 217
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v13

    .line 218
    .local v13, "versionInfo":Landroid/os/Bundle;
    const-string v0, "2.0"

    const-string v1, "version"

    invoke-virtual {v13, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 219
    iget-object v0, v12, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_7

    iget-object v0, v12, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    const/16 v1, 0xc8

    if-gt v0, v1, :cond_7

    .line 220
    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getKnoxTaskThumbnail()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 230
    :goto_2
    if-eqz v7, :cond_9

    .line 231
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 235
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/BitmapLruCache;

    iget-object v1, v12, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1, v7}, Lcom/android/systemui/recents/model/BitmapLruCache;->put(Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    .line 237
    .end local v13    # "versionInfo":Landroid/os/Bundle;
    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mCancelled:Z

    if-nez v0, :cond_6

    .line 239
    move-object v10, v6

    .line 240
    .local v10, "newIcon":Landroid/graphics/drawable/Drawable;
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    if-ne v7, v0, :cond_a

    const/4 v11, 0x0

    .line 242
    .local v11, "newThumbnail":Landroid/graphics/Bitmap;
    :goto_4
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/recents/model/TaskResourceLoader$1;

    invoke-direct {v1, p0, v12, v11, v10}, Lcom/android/systemui/recents/model/TaskResourceLoader$1;-><init>(Lcom/android/systemui/recents/model/TaskResourceLoader;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 252
    .end local v6    # "cachedIcon":Landroid/graphics/drawable/Drawable;
    .end local v7    # "cachedThumbnail":Landroid/graphics/Bitmap;
    .end local v10    # "newIcon":Landroid/graphics/drawable/Drawable;
    .end local v11    # "newThumbnail":Landroid/graphics/Bitmap;
    :cond_6
    iget-boolean v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mCancelled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    monitor-enter v1

    .line 255
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mWaitingOnLoadQueue:Z

    .line 256
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 257
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mWaitingOnLoadQueue:Z
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 261
    :goto_5
    :try_start_4
    monitor-exit v1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 222
    .restart local v6    # "cachedIcon":Landroid/graphics/drawable/Drawable;
    .restart local v7    # "cachedThumbnail":Landroid/graphics/Bitmap;
    .restart local v13    # "versionInfo":Landroid/os/Bundle;
    :cond_7
    iget-object v0, v12, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v4, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTaskThumbnail(I)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_2

    .line 227
    :cond_8
    iget-object v0, v12, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v4, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTaskThumbnail(I)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_2

    .line 233
    :cond_9
    iget-object v7, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    goto :goto_3

    .end local v13    # "versionInfo":Landroid/os/Bundle;
    .restart local v10    # "newIcon":Landroid/graphics/drawable/Drawable;
    :cond_a
    move-object v11, v7

    .line 240
    goto :goto_4

    .line 258
    .end local v6    # "cachedIcon":Landroid/graphics/drawable/Drawable;
    .end local v7    # "cachedThumbnail":Landroid/graphics/Bitmap;
    .end local v10    # "newIcon":Landroid/graphics/drawable/Drawable;
    :catch_1
    move-exception v8

    .line 259
    .restart local v8    # "ie":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5
.end method

.method start(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mContext:Landroid/content/Context;

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mCancelled:Z

    .line 150
    new-instance v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-direct {v0, p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .line 152
    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mLoadThread:Landroid/os/HandlerThread;

    monitor-enter v1

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mLoadThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 154
    monitor-exit v1

    .line 155
    return-void

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mCancelled:Z

    .line 161
    iput-object v1, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .line 164
    iget-boolean v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mWaitingOnLoadQueue:Z

    if-eqz v0, :cond_0

    .line 165
    iput-object v1, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mContext:Landroid/content/Context;

    .line 167
    :cond_0
    return-void
.end method
