package project.bfour.debtormaintenance.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import project.bfour.debtormaintenance.model.DebtorForm;

import java.util.List;
import java.util.UUID;

public interface DebtorFormRepository extends JpaRepository<DebtorForm, Integer> {
//    For /debtor/updates
    List<DebtorForm> findDebtorFormBySubmittedByOrderByIdDesc(String username);

//    to viewMore @/form/details/{uuid}
    DebtorForm findDebtorFormByTransactionId(UUID uuid);

//    for admin listing
    List<DebtorForm> findAllByTransactionStatusOrderByIdDesc(char status);

//
    int countByTransactionStatus(char status);
}
