<?php

namespace App\Policies;

use App\Tag;
use App\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class TagPolicy
{
    use HandlesAuthorization;

    /**
     * Determine whether the user can view any tags.
     *
     * @param \App\User $user
     * @return mixed
     */
    public function viewAny(User $user)
    {
        if ($user->can('đọc thẻ')) {
            return true;
        } else {
            return false;
        }
    }

    /**
     * Determine whether the user can view the tag.
     *
     * @param \App\User $user
     * @param \App\Tag $tag
     * @return mixed
     */
    public function view(User $user, Tag $tag)
    {
        if ($user->can('đọc thẻ')) {
            return true;
        } else {
            return false;
        }
    }

    /**
     * Determine whether the user can create tags.
     *
     * @param \App\User $user
     * @return mixed
     */
    public function create(User $user)
    {
        if ($user->can('tạo thẻ')) {
            return true;
        } else {
            return false;
        }
    }

    /**
     * Determine whether the user can update the tag.
     *
     * @param \App\User $user
     * @param \App\Tag $tag
     * @return mixed
     */
    public function update(User $user, Tag $tag)
    {
        if ($user->can('cập nhật thẻ')) {
            return true;
        } else {
            return false;
        }
    }

    /**
     * Determine whether the user can delete the tag.
     *
     * @param \App\User $user
     * @param \App\Tag $tag
     * @return mixed
     */
    public function delete(User $user, Tag $tag)
    {
        if ($user->can('xóa thẻ')) {
            return true;
        } else {
            return false;
        }
    }

}
