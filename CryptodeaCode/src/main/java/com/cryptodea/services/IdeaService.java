package com.olena.groupProject.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.olena.groupProject.models.Idea;
import com.olena.groupProject.repositories.IdeaRepository;

@Service
public class IdeaService {
	@Autowired 
	private IdeaRepository ideaRepository ;

	public IdeaService(IdeaRepository ideaRepository) {
		this.ideaRepository = ideaRepository;
	}
	
	public List<Idea> getIdeas(){
		return ideaRepository.findAll();
	}
	
	public Idea saveIdea(Idea idea) {
		return ideaRepository.save(idea);
	}
	
	public void deleteIdea(Long id) {
		ideaRepository.deleteById(id);
	}
}
