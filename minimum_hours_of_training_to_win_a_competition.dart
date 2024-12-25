void main(List<String> args) {
  int result = minNumberOfHours(1, 1, [1, 1, 1, 1], [1, 1, 1, 50]);
  print(result); // Expected output: 8
}

int minNumberOfHours(int initialEnergy, int initialExperience, List<int> energy,
    List<int> experience) {
  int requiredTraining = 0;
  int requiredEnergy = requiredEnergyFordefeting(energy);
  if (initialEnergy <= requiredEnergy) {
    requiredTraining = requiredTraining + (requiredEnergy - initialEnergy) + 1;
  }
  int experienceProgress = initialExperience;
  for (int i = 0; i < experience.length; i++) {
    if (experience[i] >= experienceProgress) {
      requiredTraining =
          requiredTraining + (experience[i] - experienceProgress) + 1;
      experienceProgress = experience[i] + 1;
      experienceProgress = experienceProgress + experience[i];
    } else {
      experienceProgress = experienceProgress + experience[i];
    }
  }
  return requiredTraining;
}

requiredEnergyFordefeting(List<int> energies) {
  return energies.fold(0, (e, n) => e + n);
}


// Input: initialEnergy = 5, initialExperience = 3, energy = [1,4,3,2], experience = [2,6,3,1]
