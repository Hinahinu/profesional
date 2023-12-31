import Comment from '../models/commentModel.js';

export const getCommentByIdRecipe = async (req, res) => {
    try {
        const response = await Comment.findAll({
            where: {
                id_recipe: req.params.id_recipe
            }
        });
        res.status(200).json(response);
    } catch (error) {
        console.log(error.message);
    }
};

export const createComment = async (req, res) => {
    try {
        await Comment.create(req.body);
        res.status(201).json({ msg: 'Comment Created' });
    } catch (error) {
        console.log(error.message);
    }
};

export const updateComment = async (req, res) => {
    try {
        await Comment.update(req.body, {
            where: {
                id: req.params.id
            }
        });
        res.status(201).json({ msg: 'Comment Update' });
    } catch (error) {
        console.log(error.message);
    }
};

export const deleteComment = async (req, res) => {
    try {
        await Comment.destroy({
            where: {
                id: req.params.id
            }
        });
        res.status(201).json({ msg: 'Comment Deleted' });
    } catch (error) {
        console.log(error.message);
    }
};
